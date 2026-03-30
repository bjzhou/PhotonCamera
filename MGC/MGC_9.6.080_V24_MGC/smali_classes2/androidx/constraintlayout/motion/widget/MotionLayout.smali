.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MotionLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$Model;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEBUG_SHOW_NONE:I = 0x0

.field public static final DEBUG_SHOW_PATH:I = 0x2

.field public static final DEBUG_SHOW_PROGRESS:I = 0x1

.field private static final EPSILON:F = 1.0E-5f

.field public static IS_IN_EDIT_MODE:Z = false

.field static final MAX_KEY_FRAMES:I = 0x32

.field static final TAG:Ljava/lang/String; = "MotionLayout"

.field public static final TOUCH_UP_COMPLETE:I = 0x0

.field public static final TOUCH_UP_COMPLETE_TO_END:I = 0x2

.field public static final TOUCH_UP_COMPLETE_TO_START:I = 0x1

.field public static final TOUCH_UP_DECELERATE:I = 0x4

.field public static final TOUCH_UP_DECELERATE_AND_COMPLETE:I = 0x5

.field public static final TOUCH_UP_NEVER_TO_END:I = 0x7

.field public static final TOUCH_UP_NEVER_TO_START:I = 0x6

.field public static final TOUCH_UP_STOP:I = 0x3

.field public static final VELOCITY_LAYOUT:I = 0x1

.field public static final VELOCITY_POST_LAYOUT:I = 0x0

.field public static final VELOCITY_STATIC_LAYOUT:I = 0x3

.field public static final VELOCITY_STATIC_POST_LAYOUT:I = 0x2


# instance fields
.field firstDown:Z

.field private lastPos:F

.field private lastY:F

.field private mAnimationStartTime:J

.field private mBeginState:I

.field private mBoundsCheck:Landroid/graphics/RectF;

.field mCurrentState:I

.field mDebugPath:I

.field private mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

.field private mDecoratorsHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayedApply:Z

.field private mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

.field mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

.field private mEndState:I

.field mEndWrapHeight:I

.field mEndWrapWidth:I

.field mFrameArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;"
        }
    .end annotation
.end field

.field private mFrames:I

.field mHeightMeasureMode:I

.field private mInLayout:Z

.field private mInRotation:Z

.field mInTransition:Z

.field mIndirectTransition:Z

.field private mInteractionEnabled:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mInverseMatrix:Landroid/graphics/Matrix;

.field mIsAnimating:Z

.field private mKeepAnimating:Z

.field private mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field private mLastDrawTime:J

.field private mLastFps:F

.field private mLastHeightMeasureSpec:I

.field mLastLayoutHeight:I

.field mLastLayoutWidth:I

.field mLastVelocity:F

.field private mLastWidthMeasureSpec:I

.field private mListenerPosition:F

.field private mListenerState:I

.field protected mMeasureDuringTransition:Z

.field mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

.field private mNeedsFireTransitionCompleted:Z

.field mOldHeight:I

.field mOldWidth:I

.field private mOnComplete:Ljava/lang/Runnable;

.field private mOnHideHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mOnShowHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field mPostInterpolationPosition:F

.field mPreRotate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/utils/ViewState;",
            ">;"
        }
    .end annotation
.end field

.field private mPreRotateHeight:I

.field private mPreRotateWidth:I

.field private mPreviouseRotation:I

.field mProgressInterpolator:Landroid/view/animation/Interpolator;

.field private mRegionView:Landroid/view/View;

.field mRotatMode:I

.field mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

.field private mScheduledTransitionTo:[I

.field mScheduledTransitions:I

.field mScrollTargetDT:F

.field mScrollTargetDX:F

.field mScrollTargetDY:F

.field mScrollTargetTime:J

.field mStartWrapHeight:I

.field mStartWrapWidth:I

.field private mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

.field private mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

.field mTempRect:Landroid/graphics/Rect;

.field private mTemporalInterpolator:Z

.field mTransitionCompleted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionDuration:F

.field mTransitionGoalPosition:F

.field private mTransitionInstantly:Z

.field mTransitionLastPosition:F

.field private mTransitionLastTime:J

.field private mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

.field private mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionPosition:F

.field mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field mUndergoingMotion:Z

.field mWidthMeasureMode:I


# direct methods
.method private 1c090edfb3d6b344f983284ff927455cm()V
    .locals 5

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2d

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    goto/16 :goto_27

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

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

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2d

    nop

    :goto_11
    invoke-interface {v3, p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    const v0, 0x12

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    :goto_18
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_5

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_5
    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x10

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

    :goto_20
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_7

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

    :cond_7
    goto/32 :goto_c

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2b
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

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

    :goto_2c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

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

    :goto_2f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method private 2412592798aa7e58b85444a0965f8c41m()V
    .locals 4

    goto/32 :goto_2

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
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

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
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v0

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

    :goto_8
    if-eqz v3, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->setStartCurrentState(Landroid/view/View;)V

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_19

    nop

    nop

    :goto_19
    if-lt v1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method private 2a8d23f30d20230b08d38b528576828dm(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "mBeginState",
            "mEndState"
        }
    .end annotation

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-interface {v1, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p0, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    const v0, 0x19

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

    :goto_a
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

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

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

    nop

    goto/32 :goto_18

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private 529831e0ca5443cd9bdf1b821316fdd1m()V
    .locals 20

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    if-lez v10, :cond_0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_75

    nop

    nop

    :goto_2
    move-object/from16 v19, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3
    sub-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-float/2addr v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    mul-float/2addr v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_6
    if-eqz v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_7
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_8
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v6, v5, Landroidx/constraintlayout/motion/utils/StopLogic;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_b
    long-to-float v10, v10

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v7, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_d
    move v11, v7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_f
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x14

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v17, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_3
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v9, 0x0

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

    :goto_15
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object/from16 v17, v9

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
    sub-long v10, v2, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1b
    check-cast v17, Landroidx/constraintlayout/motion/widget/MotionController;

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

    :goto_1c
    if-lt v7, v5, :cond_4

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    :goto_1d
    move-object/from16 v19, v14

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

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

    :goto_20
    const/4 v8, 0x0

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

    :goto_21
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_22
    cmpg-float v5, v1, v9

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_54

    nop

    nop

    :goto_25
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

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

    :goto_26
    goto/16 :goto_45

    nop

    nop

    :goto_27
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_28
    if-ltz v10, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_5
    :goto_29
    goto/32 :goto_3e

    nop

    nop

    :goto_2a
    const v1, 0x8

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

    :goto_2b
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v5, :cond_6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ltz v5, :cond_7

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_2e
    goto/32 :goto_22

    nop

    nop

    :goto_2f
    if-lez v10, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_8
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_30
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-float/2addr v6, v4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    long-to-float v6, v8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_36
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

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

    nop

    :goto_37
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_38
    if-nez v9, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3a
    iget-boolean v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_1e

    nop

    :goto_3c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    cmpg-float v10, v1, v9

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

    :goto_3f
    if-lez v5, :cond_a

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_a
    :goto_40
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_41
    cmpl-float v10, v1, v9

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move v11, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_43
    cmpl-float v5, v1, v9

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_32

    nop

    :goto_47
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_48
    cmpl-float v5, v6, v5

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

    :goto_49
    if-lez v0, :cond_b

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

    :cond_b
    goto/32 :goto_15

    nop

    :goto_4a
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4b
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4c
    move-object/from16 v14, v18

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4d
    move-object v10, v14

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_4e
    if-gtz v5, :cond_c

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_c
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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

    :goto_50
    invoke-interface {v7, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v5, :cond_d

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_57

    nop

    nop

    :goto_52
    cmpl-float v10, v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_53
    cmpg-float v10, v6, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_16

    nop

    :goto_55
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_56
    cmpg-float v5, v6, v5

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-eqz v8, :cond_e

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    mul-float/2addr v10, v7

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_59
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v10, :cond_f

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5b
    const v7, 0x3089705f    # 1.0E-9f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5c
    move-object/from16 v9, v17

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_5d
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-eqz v7, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_10
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_60
    div-float v4, v6, v8

    nop

    nop

    :goto_61
    goto/32 :goto_8

    nop

    nop

    :goto_62
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :goto_63
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_64
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_65
    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

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

    :goto_66
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_67
    if-gtz v10, :cond_11

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_11
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v15

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6c
    move-object/from16 v18, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_6d
    sub-long v8, v2, v8

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move-wide v12, v15

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_70
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

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

    :goto_73
    iget-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

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

    :goto_74
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

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

    :goto_75
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop
.end method

.method private 7345315d68da0831f609ac9bf19b3f7cm(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cw"
        }
    .end annotation

    goto/32 :goto_9

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    iput v1, v0, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_10

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

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput v1, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget v2, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1f

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v1, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

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

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_15
    add-int/2addr v1, v2

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

    :goto_16
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_18
    iget v2, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    const v1, 0x1f

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
.end method

.method private 7357dd078832eae82b5e394c12117548m(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "view",
            "event"
        }
    .end annotation

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xb

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
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3
    add-float/2addr v5, p1

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

    :goto_4
    if-lez v0, :cond_1

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

    :goto_5
    neg-float v1, p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float v5, v5

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

    :goto_7
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_8
    sub-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_a

    nop

    nop

    :goto_a
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    neg-float v2, p2

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
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

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

    :goto_d
    const v0, 0x9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v2

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

    :goto_f
    const/4 v0, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_11
    invoke-direct {p0, v5, v6, v4, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->7357dd078832eae82b5e394c12117548m(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

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

    :goto_12
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_17
    if-gez v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v3, v2, -0x1

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

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

    :goto_1f
    sub-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    instance-of v1, p3, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-float/2addr v3, p2

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_37

    nop

    nop

    :goto_24
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    move-object v1, p3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_26
    sub-float/2addr v2, v3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_29
    add-float/2addr v6, p2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0, p3, p4, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->73d4588fdaba134b0681ff5530a5de13m(Landroid/view/View;Landroid/view/MotionEvent;FF)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2b
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2c
    add-float/2addr v2, p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2f
    sub-float/2addr v6, v7

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
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_31
    int-to-float v3, v3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v7

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

    :goto_33
    add-int v0, v0, v1

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

    :goto_34
    if-nez v5, :cond_6

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_41

    nop

    :goto_37
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    int-to-float v2, v2

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
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v1, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_40
    return v0

    nop

    nop

    :goto_41
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_7
    :goto_43
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_44
    int-to-float v6, v6

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method private 73d4588fdaba134b0681ff5530a5de13m(Landroid/view/View;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "event",
            "offsetX",
            "offsetY"
        }
    .end annotation

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

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

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    if-eqz v2, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_d
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    neg-float v3, p4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    return v1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v2, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    return v2

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    :goto_17
    goto/32 :goto_16

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

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

    :goto_1a
    invoke-virtual {p1, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    neg-float v2, p3

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

    :goto_21
    invoke-virtual {v1, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop
.end method

.method private 8964da7b70a00a7a53835c86af8a3860m()V
    .locals 6

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    const-string v3, " "

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_6
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v4

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

    :goto_d
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

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

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_14
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    if-lt v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
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

    :goto_19
    const v1, 0x8

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

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

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    goto :goto_1c

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_22
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_24
    const-string v3, "MotionLayout"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_27
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_2a
    invoke-static {v4, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method private 9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

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

    :goto_1
    if-eq v1, v0, :cond_0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_applyMotionScene:I

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

    :goto_5
    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v4, 0x0

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

    :goto_a
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    if-eq v5, v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_16

    nop

    nop

    :goto_e
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_f
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_2
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_16

    nop

    :goto_12
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v0

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

    :goto_15
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_18
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionDebug:I

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_19
    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_1a
    goto :goto_16

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_showPaths:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    if-eq v5, v6, :cond_3

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eq v5, v6, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v7, 0x2

    nop

    nop

    :goto_26
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

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

    :goto_28
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v4, "MotionLayout"

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

    :goto_2a
    const-string v5, "WARNING NO app:layoutDescription tag"

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

    :goto_2b
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eq v5, v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_2e
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

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

    :goto_31
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_6
    goto/32 :goto_49

    nop

    :goto_33
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

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

    :goto_35
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_7
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_36
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_37
    if-eqz v3, :cond_8

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v6, 0x0

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eq v5, v6, :cond_9

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

    :cond_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v1, 0x10

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

    nop

    nop

    :goto_3e
    const/4 v3, 0x1

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

    :goto_3f
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_40
    if-nez v6, :cond_a

    nop

    goto/32 :goto_26

    nop

    :cond_a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_41
    if-lt v4, v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-eqz v4, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_c
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_1e

    nop

    :goto_44
    goto/32 :goto_56

    nop

    nop

    :goto_45
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_currentState:I

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

    :goto_46
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_47
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_layoutDescription:I

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

    :goto_48
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

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

    :goto_49
    goto/32 :goto_39

    nop

    :goto_4a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4e
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    :goto_4f
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_50
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->cbf867a2e947b9572a936fdf356ceb8em()V

    :goto_51
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-eqz v6, :cond_d

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

    :cond_d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionProgress:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_58
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v7, v8, p0, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5e
    if-eq v5, v6, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3

    nop

    nop

    :goto_5f
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez p1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_f
    goto/32 :goto_3b

    nop

    nop

    :goto_62
    add-int v0, v0, v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_63
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_e

    nop

    nop

    :goto_0
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v4, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    new-instance v1, Landroid/graphics/RectF;

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

    :goto_6
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_7
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_8
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_a
    invoke-direct {v4, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_c
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_d
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_e
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_10
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_11
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v1, Landroid/graphics/Rect;

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

    :goto_17
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

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

    :goto_18
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_19
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_1b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1e
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x1

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

    :goto_24
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v4, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_27
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_29
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

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

    :goto_2a
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

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

    :goto_2b
    new-instance v1, Ljava/util/HashMap;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2c
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2d
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2f
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

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

    :goto_30
    const-wide/16 v3, -0x1

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

    :goto_31
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

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

    :goto_32
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

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

    :goto_33
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v2, 0x0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_36
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v4, Landroidx/constraintlayout/motion/utils/StopLogic;

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

    :goto_38
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_39
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_3b
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_3

    nop

    :goto_3d
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

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

    :goto_3e
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_40
    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_43
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_44
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_46
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_47
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_48
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_49
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v4}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4d
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

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

    :goto_4e
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4f
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_50
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

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

    :goto_51
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

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

    :goto_52
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_53
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    new-instance v4, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_56
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/KeyCache;

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

    :goto_59
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
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

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

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

    :goto_4
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    new-instance v4, Landroidx/constraintlayout/motion/utils/StopLogic;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_9
    invoke-direct {v4, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_2

    nop

    nop

    :goto_a
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

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

    nop

    nop

    :goto_c
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

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

    :goto_d
    const-wide/16 v4, 0x0

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

    :goto_e
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_27

    nop

    nop

    :goto_11
    goto/32 :goto_55

    nop

    nop

    :goto_12
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_13
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

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

    :goto_14
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

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
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_17
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_19
    const/4 v2, -0x1

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

    :goto_1a
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v4, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

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

    :goto_1f
    const v1, 0x10

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_21
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_22
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_23
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2a
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

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

    :goto_2b
    new-instance v4, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2c
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_30
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_31
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_32
    const-wide/16 v3, -0x1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_33
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_34
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_36
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_38
    new-instance v1, Ljava/util/HashMap;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3a
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

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

    :goto_3b
    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

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

    :goto_3d
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_40
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_42
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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

    :goto_43
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_44
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

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

    nop

    :goto_47
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4b
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4c
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_4d
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4f
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_50
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

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

    :goto_51
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

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

    :goto_52
    if-lez v0, :cond_0

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

    :goto_53
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_54
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_56
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_57
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_58
    invoke-direct {v4}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_59
    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
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

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

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
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_9
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

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

    :goto_a
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    new-instance v4, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

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

    nop

    :goto_f
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_16
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_17
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    invoke-direct {v4, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

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

    :goto_1c
    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1e
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1f
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_21
    const/high16 v4, 0x3f800000    # 1.0f

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

    :goto_22
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_23
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_24
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

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

    :goto_25
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_27
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

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

    nop

    :goto_28
    const-wide/16 v3, -0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

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

    :goto_2c
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_2e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2f
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

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

    :goto_30
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_33
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

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

    :goto_34
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_4

    nop

    nop

    :goto_36
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_38
    const/4 v2, -0x1

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

    :goto_39
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3a
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3b
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3d
    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v4}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    :goto_40
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_43
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

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

    :goto_44
    new-instance v4, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_45
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    :goto_46
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_48
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_49
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4a
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4b
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

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

    :goto_4d
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4e
    const v1, 0x8

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

    :goto_4f
    const/4 v1, 0x0

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_50
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v4, Landroidx/constraintlayout/motion/utils/StopLogic;

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

    :goto_52
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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

    :goto_53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_54
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    nop

    :goto_56
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

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

    :goto_57
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_58
    goto/32 :goto_36

    nop

    nop

    :goto_59
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

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
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

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
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/MotionLayout;ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

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

    nop
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

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

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

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

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->de717e59913845269fde501e23f42a5am()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/MotionLayout;IIIIZZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveMeasuredDimension(IIIIZZ)V

    goto/32 :goto_1

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

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
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
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

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

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->7345315d68da0831f609ac9bf19b3f7cm(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method static synthetic access$2100(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateWidth:I

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
.end method

.method static synthetic access$2200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateHeight:I

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

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
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

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

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

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/MotionLayout;Z)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

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

    :goto_1
    return p1

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

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
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

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
    return-object v0

    nop

    nop
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

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

    nop

    nop

    nop
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

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

.method private cbf867a2e947b9572a936fdf356ceb8em()V
    .locals 12

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    const-string v11, "CHECK: you can\'t have reverse transitions"

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v9, v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    :goto_6
    invoke-direct {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->cbf867a2e947b9572a936fdf356ceb8em(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

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

    :goto_8
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

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

    :goto_d
    const-string v10, "->"

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v11, "CHECK: two transitions with the same start and end "

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v4, v5, :cond_2

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

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_15
    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_19
    if-eqz v9, :cond_3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    :goto_1a
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_1b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop

    :goto_21
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v9

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_23
    invoke-static {v7, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_24
    new-instance v0, Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_25
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_27
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_28
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

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

    :goto_29
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v3

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    :goto_2b
    goto/32 :goto_26

    nop

    nop

    :goto_2c
    const-string v0, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2d
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v9

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2e
    new-instance v2, Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2f
    const-string v5, "CHECK: CURRENT"

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_34
    if-eq v9, v6, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v10, " no such constraintSetEnd "

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_38
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->cbf867a2e947b9572a936fdf356ceb8em(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_3c
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3d
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3f
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_4d

    nop

    :goto_42
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v1, 0xd

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string v10, " no such constraintSetStart "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_49
    if-nez v4, :cond_5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_58

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4f
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_51
    const-string v1, "MotionLayout"

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

    :goto_52
    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v8, v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

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

    :goto_55
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_56
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v3

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

    :goto_57
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_6
    goto/32 :goto_41

    nop

    :goto_58
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-eqz v9, :cond_7

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

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

    :goto_5c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_48

    nop

    nop

    :goto_5d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const v0, 0x1d

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

    nop

    :goto_5f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_60
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_61
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop
.end method

.method private cbf867a2e947b9572a936fdf356ceb8em(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "csetId",
            "set"
        }
    .end annotation

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    aget v9, v2, v6

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

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

    :goto_6
    if-eqz v9, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v9, v3, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_20

    nop

    :goto_a
    goto/32 :goto_33

    nop

    nop

    :goto_b
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

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

    :goto_c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_51

    nop

    :goto_12
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_15
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

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

    :goto_17
    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1a
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

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

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_21
    invoke-static {v8, v7}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_24
    if-eq v7, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->getHeight(I)I

    move-result v9

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

    :goto_2a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2b
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_2c
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

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

    :goto_2d
    if-lt v2, v1, :cond_4

    nop

    goto/32 :goto_a

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v9, Ljava/lang/StringBuilder;

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

    :goto_2f
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_30
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

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

    :goto_32
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->getWidth(I)I

    move-result v9

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintSet;->getKnownIds()[I

    move-result-object v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    aget v7, v2, v6

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

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

    :goto_3a
    const-string v10, " NO View matches id "

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v11, "("

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

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

    :goto_3f
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_26

    nop

    nop

    :goto_41
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v8, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_47
    const-string v5, "MotionLayout"

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_48
    const-string v8, " NO CONSTRAINTS for "

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_49
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

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

    :goto_4b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

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

    :goto_4e
    if-lt v6, v7, :cond_5

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

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

    :goto_50
    const-string v8, " does not!"

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_51
    goto/32 :goto_36

    nop

    nop

    :goto_52
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_55
    const-string v8, " ALL VIEWS SHOULD HAVE ID\'s "

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_56
    array-length v7, v2

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

    :goto_57
    new-instance v9, Ljava/lang/StringBuilder;

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

    :goto_58
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_59
    const v0, 0xd

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

    :goto_5a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const-string v10, ") no LAYOUT_HEIGHT"

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_5c
    const-string v4, "CHECK: "

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_5d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5e
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v3, :cond_6

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_62
    if-eq v9, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_52

    nop

    :goto_64
    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    goto/32 :goto_14

    nop

    nop
.end method

.method private cbf867a2e947b9572a936fdf356ceb8em(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transition"
        }
    .end annotation

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "MotionLayout"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto/32 :goto_4

    nop

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "CHECK: start and end constraint set should not be the same!"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-eq v0, v1, :cond_1

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop
.end method

.method private de717e59913845269fde501e23f42a5am()V
    .locals 21

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_2
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_cb

    nop

    nop

    :goto_3
    if-nez v6, :cond_1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    :goto_6
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v7, v12}, Landroidx/constraintlayout/motion/widget/MotionController;->setPathMotionArc(I)V

    :goto_8
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move/from16 v18, v9

    nop

    :goto_a
    goto/32 :goto_134

    nop

    nop

    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_ec

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14e

    nop

    nop

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_10
    cmpg-double v6, v6, v8

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    :goto_12
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v9, v5, :cond_2

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

    :cond_2
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v10

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

    :goto_15
    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_18
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_fc

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_1e
    div-float v4, v10, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_1f
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_de

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    mul-float/2addr v4, v5

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_27
    iget v4, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    :goto_28
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

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

    :goto_2b
    move-object/from16 v16, v3

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/high16 v17, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_9e

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_f6

    nop

    nop

    :goto_31
    const/4 v2, 0x0

    nop

    :goto_32
    goto/32 :goto_b4

    nop

    nop

    :goto_33
    move-object v5, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_34
    goto/16 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-ltz v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :cond_4
    goto/32 :goto_7c

    nop

    nop

    :goto_37
    move-object/from16 v16, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_38
    move-wide/from16 v9, v17

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-wide/16 v8, 0x0

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

    :goto_3c
    if-lt v9, v15, :cond_6

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_45

    nop

    nop

    :goto_3d
    if-lt v9, v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v13, v6

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_a8

    nop

    nop

    :goto_40
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v17

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v5

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eqz v6, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :cond_8
    goto/32 :goto_b8

    nop

    nop

    :goto_45
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move v15, v9

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_132

    nop

    nop

    :goto_48
    move/from16 v18, v4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_49
    sub-float v17, v10, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4a
    aget v6, v14, v9

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

    :goto_4b
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_4d
    move v9, v5

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move v6, v4

    nop

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

    nop

    :goto_51
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_52
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_129

    nop

    nop

    :goto_54
    goto/16 :goto_bb

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_56
    div-float/2addr v4, v10

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_58
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_12a

    nop

    nop

    :goto_59
    aput v10, v14, v15

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

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

    :goto_5b
    goto/16 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v6, 0x1

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

    :goto_5e
    if-eqz v10, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_9
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_5f
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_60
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move-object/from16 v5, v16

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move-object/from16 v20, v10

    nop

    nop

    :goto_63
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_11d

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_66
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_68
    sub-float v10, v8, v7

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_69
    add-int v0, v0, v1

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

    :goto_6a
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    move/from16 v19, v9

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

    :goto_6e
    if-nez v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_141

    nop

    nop

    :goto_6f
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_71
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

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

    :goto_72
    sub-float v4, v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_73
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_74
    move/from16 v18, v9

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_75
    div-float v0, v17, v20

    nop

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

    :goto_76
    move-object/from16 v16, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_77
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_78
    if-eqz v16, :cond_b

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_b
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_79
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-eqz v10, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :cond_c
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iput v4, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_32

    nop

    :goto_7d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    add-int/lit8 v9, v9, 0x1

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_82
    move-wide/from16 v9, v16

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_83
    const/high16 v10, 0x3f800000    # 1.0f

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

    :goto_84
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    :goto_85
    invoke-virtual {v5, v10}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_86
    move/from16 v18, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_88
    move v9, v5

    nop

    nop

    :goto_89
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_8a
    move/from16 v18, v9

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

    :goto_8b
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_8c
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_8d
    move/from16 v19, v9

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8f
    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_90
    if-lt v9, v1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :cond_d
    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_93
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move v7, v11

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_95
    const/4 v5, -0x1

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_96
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_97
    sub-float v10, v8, v7

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

    nop

    :goto_98
    if-lt v9, v1, :cond_e

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_99
    new-array v14, v6, [I

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    move-object/from16 v20, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_9b
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget v4, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    :goto_9e
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    sub-float v18, v17, v10

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_a0
    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

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

    :goto_a1
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

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

    :goto_a2
    const v1, 0x6

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

    :goto_a3
    move-object v5, v10

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_a4
    rem-int v0, v0, v1

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

    :goto_a5
    if-nez v5, :cond_f

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_a9

    nop

    nop

    :goto_a6
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    move/from16 v18, v4

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_a9
    move/from16 v18, v9

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    :goto_aa
    goto/16 :goto_89

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_ad
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_ae
    sub-float v0, v5, v0

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_af
    move v6, v4

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    move v7, v11

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_b1
    add-int/lit8 v5, v5, 0x1

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

    :goto_b2
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_b3
    if-lt v9, v15, :cond_10

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

    :cond_10
    goto/32 :goto_121

    nop

    nop

    nop

    :goto_b4
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_b5
    move-object/from16 v19, v8

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

    :goto_b6
    if-lt v5, v15, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_b7
    sub-float v0, v19, v7

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    goto/16 :goto_12

    nop

    nop

    :goto_b9
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_ba
    move/from16 v18, v4

    nop

    :goto_bb
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_52

    nop

    nop

    :goto_be
    iput v4, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v13, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

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

    :goto_c1
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_c2
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_c3
    move-object/from16 v19, v10

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

    :goto_c4
    if-lt v7, v1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_107

    nop

    nop

    :goto_c5
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    if-eqz v10, :cond_13

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_c7
    move-object/from16 v0, p0

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_c9
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v17

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_ca
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_cb
    const/4 v4, 0x0

    nop

    nop

    :goto_cc
    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    goto/16 :goto_15e

    nop

    nop

    :goto_ce
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    if-nez v7, :cond_14

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

    :cond_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d0
    goto/32 :goto_67

    nop

    :goto_d1
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_d4
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v16

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_d5
    move/from16 v19, v18

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

    :goto_d6
    sub-float v4, v5, v4

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_d7
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    nop

    nop

    nop

    :goto_d8
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    move-wide/from16 v9, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_da
    const v8, -0x800001

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_db
    move/from16 v18, v9

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    if-lt v3, v1, :cond_15

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    :goto_de
    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    move v15, v6

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_e1
    sub-float v20, v8, v7

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    :goto_e2
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_e3
    move/from16 v18, v4

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_e4
    if-nez v2, :cond_16

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_e5
    if-lt v6, v1, :cond_17

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e6
    goto/16 :goto_63

    nop

    :goto_e7
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v9

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

    :goto_e9
    mul-float/2addr v0, v5

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_ea
    if-nez v8, :cond_18

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_ee
    add-int/lit8 v9, v15, 0x1

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_ef
    move-object/from16 v3, v16

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_f0
    move-object/from16 v18, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_f1
    add-int/lit8 v9, v18, 0x1

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    goto/16 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_f4
    move/from16 v18, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_f7
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

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

    :goto_fa
    move/from16 v4, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_fb
    move v9, v5

    nop

    nop

    :goto_fc
    goto/32 :goto_3c

    nop

    nop

    :goto_fd
    move-object/from16 v19, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_ff
    cmpl-float v6, v5, v6

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

    :goto_100
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_102
    add-float v19, v10, v9

    nop

    nop

    nop

    nop

    :goto_103
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_104
    if-ne v12, v5, :cond_19

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    :cond_19
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    if-lez v0, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    :cond_1a
    goto/32 :goto_d0

    nop

    :goto_106
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_107
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v11

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

    :goto_109
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

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

    :goto_10a
    new-instance v6, Landroid/util/SparseBooleanArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    :goto_10b
    new-instance v3, Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10c
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_10d
    move/from16 v8, v18

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

    :goto_10e
    move-object v8, v5

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

    :goto_10f
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_110
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_111
    const/4 v6, 0x0

    nop

    nop

    :goto_112
    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_115
    goto :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_116
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_117
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_118
    const/4 v7, 0x0

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_119
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStaggered()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    move v7, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_11b
    invoke-virtual {v13, v9, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_11c
    add-float v18, v17, v10

    nop

    nop

    :goto_11d
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

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

    nop

    :goto_11f
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_120
    aget v7, v14, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_121
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_122
    move/from16 v18, v7

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

    :goto_123
    sub-float v20, v17, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_124
    if-nez v5, :cond_1b

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

    :cond_1b
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_125
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_126
    move/from16 v3, v19

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_127
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_128
    div-float/2addr v4, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_129
    if-lt v3, v1, :cond_1c

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_12a
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_12b
    move-object v10, v5

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

    :goto_12c
    move v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v6, v0, v7}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

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

    :goto_12f
    add-int/lit8 v9, v19, 0x1

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_130
    add-int/lit8 v9, v18, 0x1

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

    :goto_131
    const v8, -0x800001

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

    :goto_132
    add-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_133
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    const/4 v5, 0x0

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

    :goto_135
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionHelper;

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

    :goto_136
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_137
    aget v6, v14, v9

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_138
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_13d
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_13e
    move/from16 v18, v9

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_13f
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_140
    const/4 v5, 0x0

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

    :goto_141
    sub-float v19, v10, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_142
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_143
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_144
    move-object/from16 v16, v3

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

    :goto_145
    iput v4, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_146
    if-lt v4, v1, :cond_1d

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_150

    nop

    nop

    :goto_147
    float-to-double v6, v5

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

    :goto_148
    if-eqz v10, :cond_1e

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    :cond_1e
    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_149
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    :goto_14a
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_14b
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

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

    :goto_14c
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->gatPathMotionArc()I

    move-result v12

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

    :goto_14d
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_14e
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    move/from16 v19, v9

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

    :goto_150
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

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

    :goto_151
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_152
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    check-cast v16, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_155
    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_156
    div-float v0, v0, v20

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_157
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_158
    goto/32 :goto_ea

    nop

    nop

    :goto_159
    sub-float/2addr v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_15a
    const/4 v6, 0x0

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_15c
    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    nop

    nop

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

    :goto_15d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_15f
    sub-float v4, v5, v4

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

    nop

    :goto_160
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop
.end method

.method private f9c4f9809076d7329535ac061f5efeabm()V
    .locals 6

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_1
    if-ne v0, v2, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

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

    :goto_3
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_43

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

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

    :goto_7
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_8
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

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

    :goto_9
    if-nez v0, :cond_2

    nop

    goto/32 :goto_2c

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_a
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_40

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

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_19
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

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

    :goto_1a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1b
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

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

    :goto_1c
    if-nez v0, :cond_4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1e
    if-nez v2, :cond_5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, -0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4

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

    :goto_23
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

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

    :goto_24
    invoke-interface {v2, p0, v3, v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    :goto_25
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

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

    :goto_2b
    invoke-interface {v0, p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    :goto_2c
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

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

    :goto_2e
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

    :goto_2f
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_30
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_31
    const v0, 0xc

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_44

    nop

    nop

    :goto_35
    goto/32 :goto_26

    nop

    nop

    :goto_36
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_38
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v2, :cond_9

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3b
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_a
    goto/32 :goto_2

    nop

    nop

    :goto_3d
    invoke-interface {v2, p0, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v0, :cond_b

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

    :cond_b
    :goto_42
    goto/32 :goto_45

    nop

    nop

    :goto_43
    return-void

    nop

    :goto_44
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

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

    :goto_46
    invoke-interface {v3, p0, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop
.end method

.method private static willJump(FFF)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "velocity",
            "position",
            "maxAcceleration"
        }
    .end annotation

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-float v6, p2, v1

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

    :goto_1
    if-gtz v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v2

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    mul-float/2addr v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_5
    cmpl-float v4, v4, v5

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

    :goto_6
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    add-float v4, p1, v1

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

    :goto_8
    sub-float/2addr v1, v5

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    div-float/2addr v5, v4

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    mul-float v1, p0, v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v5, v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/high16 v4, 0x40000000    # 2.0f

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

    :goto_e
    const v0, 0x13

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    :goto_11
    mul-float v5, p2, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    div-float v0, p0, p2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    neg-float v1, p0

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

    :goto_14
    add-float/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    cmpg-float v0, v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_17
    if-gtz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_18
    add-float v4, p1, v5

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
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2b

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    :goto_1d
    goto :goto_27

    nop

    :goto_1e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return v2

    nop

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_22
    cmpl-float v1, p0, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_24
    div-float/2addr v6, v4

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

    :goto_25
    if-ltz v0, :cond_3

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

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    :goto_26
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v3, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_29
    div-float/2addr v1, p2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    mul-float v5, p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2b
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method


# virtual methods
.method public addTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method animateTo(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    cmpl-float v1, v1, v2

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

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

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

    :goto_3
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    :goto_5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_7
    div-float/2addr v0, v3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

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

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    goto/32 :goto_2e

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

    goto/32 :goto_9

    nop

    nop

    :goto_c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    :goto_10
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    :goto_18
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_30

    nop

    :goto_1a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    :goto_1d
    cmpl-float v1, v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_20
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_26
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_27
    const/high16 v3, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_28
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

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

    :goto_29
    return-void

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

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

    :goto_2c
    if-nez v1, :cond_4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0xc

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2e
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1c

    nop

    :goto_30
    goto/32 :goto_1e

    nop

    nop

    :goto_31
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method public applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewTransitionId",
            "motionController"
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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop
.end method

.method public cloneConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_3
    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v1, 0x14

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x4

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

    :goto_7
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    return-object v1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop
.end method

.method disableAutoTransition(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->disableAutoTransition(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_2
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v7, -0x77ff78

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_6
    mul-float/2addr v7, v8

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

    :goto_7
    div-float/2addr v8, v7

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_8
    mul-float v8, v1, v7

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

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

    :goto_a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :cond_1
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

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

    :goto_f
    div-float/2addr v1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_10
    const-string v7, " -> "

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_11
    const/4 v9, -0x1

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

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    :goto_14
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_17
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_18
    if-eq v8, v9, :cond_3

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1a
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_1c
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1d
    int-to-float v1, v1

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

    :goto_1e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v8, v8, -0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_20
    const/high16 v1, 0x42280000    # 42.0f

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

    nop

    :goto_21
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_22
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :cond_4
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    :goto_27
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_91

    nop

    nop

    :goto_2b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_2c
    invoke-static {p0, v7}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_2d
    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2e
    float-to-int v8, v8

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_32
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string v8, " ) state="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_35
    and-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_36
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v2

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

    :goto_39
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_3a
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3b
    const-string v7, " fps "

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_3c
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animate()V

    :goto_3f
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_40
    new-instance v7, Ljava/lang/StringBuilder;

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

    :goto_41
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_4d

    nop

    :cond_6
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_43
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

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

    :goto_47
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v8

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    :goto_49
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :cond_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1, v6, v5, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

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
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_51
    cmp-long v1, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_52
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {p0, v8}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_56
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_57
    return-void

    nop

    nop

    :goto_58
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_59
    if-eq v1, v2, :cond_8

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-gt v0, v2, :cond_9

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

    :cond_9
    goto/32 :goto_9

    nop

    nop

    :goto_5b
    if-gtz v1, :cond_a

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_5d
    const-wide/32 v7, 0xbebc200

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_5e
    div-float/2addr v1, v5

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_60
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_61
    const/high16 v5, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v8, "undefined"

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_63
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const/high16 v5, 0x41200000    # 10.0f

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_66
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_67
    int-to-float v8, v8

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_68
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const-string v8, " (progress: "

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_6b
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPostDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez v0, :cond_b

    nop

    goto/32 :goto_93

    nop

    nop

    :cond_b
    goto/32 :goto_1

    nop

    nop

    :goto_6d
    long-to-float v7, v5

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    float-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_72
    add-int/2addr v1, v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_73
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_c
    goto/32 :goto_13

    nop

    :goto_74
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_76
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_77
    sub-long v5, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_78
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_7b
    const v8, 0x3089705f    # 1.0E-9f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    int-to-float v8, v8

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_3d

    nop

    :goto_7e
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-nez v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_d
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_80
    invoke-static {p0, v8}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_81
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    move-result v1

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

    :goto_82
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_83
    const/high16 v7, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_84
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_85
    add-int/lit8 v7, v7, -0x1e

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

    :goto_86
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_87
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_88
    const-wide/16 v7, -0x1

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

    :goto_89
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_8c
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    nop

    nop

    :goto_8d
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

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

    :goto_90
    new-instance v0, Landroid/graphics/Paint;

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

    :goto_91
    const/high16 v7, 0x41300000    # 11.0f

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_92
    goto/16 :goto_2

    nop

    nop

    :goto_93
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_94
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_95
    const/high16 v7, -0x1000000

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_97
    cmp-long v1, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_98
    mul-float/2addr v1, v5

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-eqz v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_e
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_9a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_9c
    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop
.end method

.method public enableTransition(IZ)V
    .locals 5
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

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

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

    :goto_3
    const/4 v1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    if-nez v4, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    iput-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_14
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    goto :goto_19

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    :goto_1f
    if-nez p2, :cond_4

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

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

    :goto_22
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_18

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

    nop

    goto/32 :goto_6

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

    nop

    :goto_25
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public enableViewTransition(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewTransitionId",
            "enable"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->enableViewTransition(IZ)V

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

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

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v3, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->endTrigger(Z)V

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

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

    :goto_8
    if-lt v1, v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_9
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    const v0, 0x8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

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

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    goto :goto_11

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop
.end method

.method evaluate(Z)V
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force"
        }
    .end annotation

    goto/32 :goto_17b

    nop

    nop

    nop

    :goto_0
    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_1
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sub-long v12, v6, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_4
    move/from16 v18, v3

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_5
    cmpg-float v13, v10, v13

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_6
    add-float/2addr v10, v8

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_7
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    :goto_8
    if-nez v11, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    :cond_0
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_a
    cmpl-float v3, v10, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    cmp-long v1, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    :goto_c
    const/4 v1, 0x1

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

    :goto_d
    if-ne v2, v11, :cond_1

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    :goto_f
    cmpg-float v13, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_11
    goto/16 :goto_108

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    :goto_14
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_15
    move-object/from16 v19, v5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    invoke-interface {v3, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-wide/from16 v22, v16

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_19
    if-ne v2, v15, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d9

    nop

    nop

    :goto_1a
    goto/16 :goto_18a

    nop

    :goto_1b
    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    move/from16 v2, v16

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-float/2addr v11, v10

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v6

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_22
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    :goto_23
    cmpl-float v13, v10, v13

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    :goto_24
    move-object/from16 v20, v11

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_25
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_27
    cmpg-float v11, v10, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_28
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_29
    cmpl-float v9, v1, v2

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_2a
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2b
    iput-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    :goto_2c
    goto/32 :goto_122

    nop

    nop

    :goto_2d
    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2e
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    :goto_2f
    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_30
    cmpg-float v11, v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_31
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_33
    if-ltz v11, :cond_4

    nop

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

    :cond_4
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v9, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_137

    nop

    nop

    :goto_35
    const/4 v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_3a
    if-eqz v6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_6
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_3b
    if-gtz v6, :cond_7

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

    :cond_7
    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move/from16 v25, v2

    nop

    goto/32 :goto_17d

    nop

    nop

    :goto_3d
    if-nez v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_187

    nop

    nop

    nop

    :goto_3e
    const/4 v3, 0x0

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_3f
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_40
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :goto_41
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_42
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

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

    :goto_43
    if-lez v9, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_9
    goto/32 :goto_f9

    nop

    nop

    :goto_44
    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_45
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_46
    if-eqz v10, :cond_a

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_48
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_49
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move/from16 v2, v25

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v6, :cond_b

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :cond_b
    :goto_4c
    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_4d
    instance-of v11, v9, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :goto_4e
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_4f
    if-nez v13, :cond_c

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_16e

    nop

    nop

    nop

    :goto_50
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    :goto_51
    cmpl-float v6, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    :goto_54
    if-gtz v13, :cond_d

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_55
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_56
    cmpl-float v6, v6, v1

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_57
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

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

    nop

    nop

    :goto_58
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v9

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_59
    sub-long v2, v6, v2

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :goto_5b
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_5c
    cmpg-float v9, v10, v9

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_5d
    if-eqz v11, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_5e
    mul-float/2addr v3, v1

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move v2, v10

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_60
    div-float v8, v10, v12

    nop

    :goto_61
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_62
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_63
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_64
    const/4 v11, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_65
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    :goto_66
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_67
    mul-float/2addr v2, v11

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_68
    cmpl-float v3, v3, v17

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_69
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_6a
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_6b
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

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

    :goto_6c
    if-nez v6, :cond_f

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_f
    :goto_6d
    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_6e
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_6f
    if-nez v5, :cond_10

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_70
    const/high16 v11, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_71
    move v2, v10

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

    :goto_72
    move/from16 v3, v18

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_103

    nop

    nop

    :goto_74
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    :goto_75
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_18e

    nop

    nop

    :goto_76
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_77
    cmpl-float v6, v10, v2

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_78
    const/4 v2, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_79
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iput-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const v17, 0x3727c5ac    # 1.0E-5f

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_7d
    const/4 v3, 0x0

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_7e
    if-gez v16, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    :cond_11
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_7f
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

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

    :goto_80
    move-object/from16 v24, v2

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move/from16 v18, v3

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

    :goto_82
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_83
    instance-of v10, v9, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_84
    div-float/2addr v3, v8

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_85
    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

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

    :goto_86
    move/from16 v18, v3

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_88
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_89
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iput-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

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

    :goto_8b
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v3

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_8c
    cmpg-float v9, v10, v3

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_8d
    cmpl-float v9, v10, v3

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

    nop

    nop

    :goto_8e
    if-nez v5, :cond_12

    nop

    nop

    goto/32 :goto_92

    nop

    :cond_12
    goto/32 :goto_91

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_ad

    nop

    :goto_90
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_91
    goto :goto_90

    nop

    :goto_92
    goto/32 :goto_e6

    nop

    nop

    :goto_93
    sget-object v11, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_94
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :goto_95
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_96
    if-ltz v3, :cond_13

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_9b
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    sget-object v7, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    cmpl-float v2, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_9e
    iput-wide v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_9f
    if-lez v5, :cond_14

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

    :cond_14
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-eqz v2, :cond_15

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget-wide v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_a2
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_a3
    cmpg-float v9, v1, v3

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    cmpg-float v5, v1, v2

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_a5
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a6
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_a7
    move v3, v1

    nop

    nop

    :goto_a8
    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_aa
    if-nez v9, :cond_16

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_16
    goto/32 :goto_d5

    nop

    nop

    :goto_ab
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    :goto_ac
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    :goto_ad
    goto/32 :goto_3f

    nop

    nop

    :goto_ae
    if-ltz v9, :cond_17

    nop

    goto/32 :goto_dd

    nop

    :cond_17
    :goto_af
    goto/32 :goto_4e

    nop

    nop

    :goto_b0
    sub-float/2addr v6, v1

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    if-ltz v3, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    :cond_18
    :goto_b2
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_b3
    cmpl-float v6, v10, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_b4
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_b5
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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

    nop

    nop

    :goto_b6
    float-to-double v5, v10

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    :goto_b8
    move v10, v3

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iput-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    if-lez v1, :cond_19

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v14, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_bd
    if-eq v9, v10, :cond_1a

    nop

    goto/32 :goto_178

    nop

    :cond_1a
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_bf
    add-float v9, v2, v8

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_19a

    nop

    :goto_c1
    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    if-eqz v5, :cond_1b

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_c3
    cmpl-float v9, v1, v3

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    :goto_c4
    goto/16 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_15e

    nop

    nop

    :goto_c6
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_191

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    long-to-float v10, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    cmpg-float v9, v1, v5

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_cc
    if-eqz p1, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_1c
    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_cd
    cmpg-float v1, v1, v2

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    if-gtz v3, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :cond_1d
    goto/32 :goto_101

    nop

    nop

    :goto_cf
    if-ne v11, v2, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iput-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    const v11, 0x3089705f    # 1.0E-9f

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_d4
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_d5
    move v10, v4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d6
    sub-float/2addr v9, v11

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_d7
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_d8
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d9
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_da
    iput-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    :goto_db
    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_dc
    if-lez v9, :cond_1f

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1f
    :goto_dd
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_de
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_df
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_e0
    if-lez v11, :cond_20

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_19c

    nop

    nop

    :goto_e1
    if-nez v6, :cond_21

    nop

    nop

    goto/32 :goto_73

    nop

    :cond_21
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_e3
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :goto_e4
    goto/32 :goto_19

    nop

    nop

    :goto_e5
    move v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_e6
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_e7
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

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

    :goto_e8
    cmpl-float v13, v1, v2

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

    :goto_e9
    move v9, v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    move/from16 v21, v9

    nop

    :goto_eb
    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_ec
    or-int/2addr v1, v3

    nop

    goto/32 :goto_188

    nop

    nop

    :goto_ed
    if-nez v6, :cond_22

    nop

    nop

    goto/32 :goto_139

    nop

    :cond_22
    :goto_ee
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_f0
    or-int v2, v11, v14

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_f1
    if-ltz v9, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_f2
    if-lez v9, :cond_24

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

    :cond_24
    :goto_f3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/utils/StopLogic;->isStopped()Z

    move-result v9

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_f7
    if-eqz v2, :cond_25

    nop

    goto/32 :goto_14

    nop

    :cond_25
    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :goto_fb
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    cmpl-float v6, v10, v2

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    mul-float/2addr v11, v5

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_fe
    const/4 v5, 0x0

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

    :goto_ff
    const/4 v13, 0x0

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_100
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

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

    :goto_101
    cmpg-float v3, v1, v5

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_102
    if-ltz v5, :cond_26

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_103
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

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

    :goto_104
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_105
    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_106
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_107
    move v10, v15

    nop

    nop

    nop

    nop

    :goto_108
    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_109
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    :goto_10a
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_10c
    if-gez v5, :cond_27

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    :cond_27
    goto/32 :goto_82

    nop

    nop

    :goto_10d
    if-lez v13, :cond_28

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    :cond_28
    :goto_10e
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_10f
    cmpl-float v11, v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    :goto_110
    if-lez v11, :cond_29

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

    :cond_29
    goto/32 :goto_19e

    nop

    nop

    :goto_111
    move/from16 v18, v11

    nop

    nop

    :goto_112
    goto/32 :goto_141

    nop

    nop

    :goto_113
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    move/from16 v25, v2

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    :goto_115
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    if-nez v5, :cond_2a

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_4

    nop

    nop

    :goto_117
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_118
    if-gtz v3, :cond_2b

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_b4

    nop

    nop

    :goto_119
    long-to-float v2, v2

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_11a
    cmpg-float v5, v11, v17

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

    :goto_11b
    if-gez v2, :cond_2c

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_11c
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    const/4 v2, 0x1

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    mul-float/2addr v10, v1

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    :goto_11f
    if-lt v9, v3, :cond_2d

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :cond_2d
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_120
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_121
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_122
    const/4 v5, 0x0

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_123
    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_124
    cmpl-float v3, v1, v2

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

    nop

    :goto_125
    cmpl-float v6, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_126
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_127
    div-float v11, v1, v11

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

    :goto_128
    goto/16 :goto_37

    nop

    :goto_129
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_12a
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v16

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v6

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    if-eqz v1, :cond_2e

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

    :cond_2e
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_12d
    goto/16 :goto_eb

    nop

    nop

    nop

    :goto_12e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    if-eqz v11, :cond_2f

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_2f
    goto/32 :goto_f8

    nop

    nop

    :goto_130
    cmpg-float v11, v3, v5

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

    :goto_131
    if-nez v9, :cond_30

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    if-eqz v6, :cond_31

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :cond_31
    :goto_133
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_135
    const/4 v14, 0x0

    nop

    goto/32 :goto_128

    nop

    nop

    :goto_136
    if-ne v1, v2, :cond_32

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    :cond_32
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_137
    move v14, v2

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_138
    if-eqz v6, :cond_33

    nop

    goto/32 :goto_14

    nop

    :cond_33
    :goto_139
    goto/32 :goto_13

    nop

    nop

    :goto_13a
    if-eqz v12, :cond_34

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    if-nez v11, :cond_35

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :cond_35
    goto/32 :goto_85

    nop

    nop

    :goto_13c
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_13d
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    if-ne v5, v6, :cond_36

    nop

    nop

    goto/32 :goto_148

    nop

    :cond_36
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    const-wide/16 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_140
    cmpl-float v9, v10, v9

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_141
    move-wide/from16 v19, v6

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_142
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_143
    move/from16 v2, v16

    nop

    goto/32 :goto_154

    nop

    nop

    :goto_144
    if-nez v9, :cond_37

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_145
    if-gtz v6, :cond_38

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :cond_38
    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    iput-wide v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_147
    move/from16 v18, v5

    nop

    nop

    :goto_148
    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_149
    instance-of v9, v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_14b
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

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

    :goto_14c
    sub-float v3, v2, v10

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_14f
    if-nez v9, :cond_39

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_150
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_151
    invoke-interface {v9, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_152
    return-void

    nop

    nop

    nop

    :goto_153
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_154
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_155
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_156
    if-eq v10, v4, :cond_3a

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

    :cond_3a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_157
    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

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

    nop

    :goto_158
    cmpl-float v6, v10, v2

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    :goto_159
    cmpg-float v3, v10, v3

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    :goto_15a
    if-nez v9, :cond_3b

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_3b
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_15d
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    move/from16 v25, v2

    nop

    nop

    :goto_15f
    goto/32 :goto_19b

    nop

    nop

    :goto_160
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_161
    if-ne v1, v2, :cond_3c

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :cond_3c
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_162
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_163
    if-ltz v5, :cond_3d

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3d
    goto/32 :goto_158

    nop

    nop

    :goto_164
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_165
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_166
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_167
    if-lez v3, :cond_3e

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :cond_3e
    :goto_168
    goto/32 :goto_63

    nop

    nop

    :goto_169
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    cmpg-float v5, v1, v2

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_16b
    move/from16 v10, v16

    nop

    nop

    nop

    nop

    :goto_16c
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16d
    if-lez v9, :cond_3f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :cond_3f
    goto/32 :goto_7

    nop

    nop

    :goto_16e
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    :goto_16f
    goto/32 :goto_e8

    nop

    nop

    :goto_170
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

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

    :goto_171
    move/from16 v16, v13

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_172
    invoke-virtual/range {v19 .. v24}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_173
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_174
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_175
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_176
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_177
    goto :goto_16c

    nop

    nop

    :goto_178
    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_179
    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    :goto_17a
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_17c
    const/4 v4, -0x1

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

    :goto_17d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17e
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_17f
    cmpl-float v16, v3, v11

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_180
    if-gtz v9, :cond_40

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_181
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_182
    if-ltz v13, :cond_41

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :cond_41
    :goto_183
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_184
    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    :goto_185
    if-lez v13, :cond_42

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    :cond_42
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_186
    add-int v0, v0, v1

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

    :goto_187
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_188
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_189
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    :goto_18a
    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    move/from16 v21, v10

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_18c
    invoke-interface {v11, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_18d
    if-gtz v9, :cond_43

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :cond_43
    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    sget-object v14, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_18f
    if-eqz v1, :cond_44

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_44
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_190
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    :goto_191
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_192
    if-gtz v11, :cond_45

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :cond_45
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_193
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_194
    invoke-interface {v9, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_195
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    :goto_196
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    or-int/2addr v2, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    :goto_198
    if-eqz v9, :cond_46

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :cond_46
    goto/32 :goto_18b

    nop

    nop

    :goto_199
    const/4 v14, 0x0

    nop

    nop

    nop

    :goto_19a
    goto/32 :goto_f0

    nop

    nop

    :goto_19b
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_19c
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    cmpl-double v5, v5, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_19e
    move v3, v5

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_19f
    mul-float/2addr v10, v11

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a0
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    goto/32 :goto_161

    nop

    nop
.end method

.method protected fireTransitionCompleted()V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

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

    :goto_2
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3
    sub-int/2addr v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_37

    nop

    nop

    :goto_6
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v3, Ljava/lang/Integer;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

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

    :goto_b
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sub-int/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    aget v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_13
    goto/32 :goto_22

    nop

    nop

    :goto_14
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    if-eq v0, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

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

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

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

    :goto_1a
    if-eqz v0, :cond_4

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

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

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

    :goto_1c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_5

    nop

    goto/32 :goto_8

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

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

    :goto_1f
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_22
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_23
    const v1, 0x7

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_7

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

    :cond_7
    goto/32 :goto_36

    nop

    :goto_28
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->1c090edfb3d6b344f983284ff927455cm()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    :goto_2b
    if-gtz v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2c
    if-ne v3, v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_30
    const/4 v0, -0x1

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

    :goto_31
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v0, v3, :cond_a

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2c

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

    goto/32 :goto_27

    nop

    nop

    :goto_34
    sub-int/2addr v4, v1

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

    :goto_35
    const/4 v1, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_f

    nop

    :goto_37
    goto/32 :goto_2e

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_39
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3a
    array-length v3, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto/32 :goto_d

    nop

    nop

    :goto_3c
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop
.end method

.method public fireTrigger(IZF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "triggerId",
            "positive",
            "progress"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    const v0, 0x4

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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_16

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_10
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method getAnchorDpDt(IFFF[F)V
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
            "mTouchAnchorId",
            "pos",
            "locationX",
            "locationY",
            "mAnchorDpDt"
        }
    .end annotation

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    :goto_2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_36

    nop

    nop

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastY:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const v0, 0x9

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_8
    const-string v3, ""

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

    :goto_9
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_29

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    :goto_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    move-object v2, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    sub-float v4, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastY:F

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

    :goto_18
    const-string v4, "MotionLayout"

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastPos:F

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

    :goto_1e
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_20
    sub-float v3, p2, v3

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

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastPos:F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    div-float v5, v4, v3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_29
    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2b
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_21

    nop

    :goto_2c
    const/high16 v5, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x14

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

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

    :goto_33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_36
    const-string v4, "WARNING could not find view id "

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_37
    cmpl-float v5, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop
.end method

.method public getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_2

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

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public getConstraintSetIds()[I
    .locals 1

    goto/32 :goto_3

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

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

    :goto_2
    return-object v0

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_4
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSetIds()[I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method getConstraintSetNames(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop
.end method

.method public getCurrentState()I
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

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

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
.end method

.method public getDebugMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showPaths"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

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
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

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

    :goto_7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const/4 v0, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public getDesignTool()Landroidx/constraintlayout/motion/widget/DesignTool;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

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

    :goto_3
    new-instance v0, Landroidx/constraintlayout/motion/widget/DesignTool;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/DesignTool;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public getEndState()I
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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method getMotionController(I)Landroidx/constraintlayout/motion/widget/MotionController;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mTouchAnchorId"
        }
    .end annotation

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    const v0, 0x1c

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method protected getNanoTime()J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const v1, 0x6

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    const v0, 0x10

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop
.end method

.method public getProgress()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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
.end method

.method public getScene()Landroidx/constraintlayout/motion/widget/MotionScene;
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

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getStartState()I
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

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

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
.end method

.method public getTargetPosition()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

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
.end method

.method public getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
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
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getTransitionById(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->recordState()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->getTransitionState()Landroid/os/Bundle;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop
.end method

.method public getTransitionTimeMs()J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    div-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    const v0, 0x5

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

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-float/2addr v0, v1

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

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1d

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
    const/high16 v1, 0x447a0000    # 1000.0f

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

    :goto_d
    float-to-long v0, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    return-wide v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop
.end method

.method public getVelocity()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

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

.method public getViewVelocity(Landroid/view/View;FF[FI)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "posOnViewX",
            "posOnViewY",
            "returnVelocity",
            "type"
        }
    .end annotation

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-float v5, v3, v4

    nop

    nop

    goto/32 :goto_e

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
    goto/32 :goto_3a

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_6
    move-object v7, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v9, v8, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    :goto_a
    goto/32 :goto_2f

    nop

    nop

    :goto_b
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    aput v2, p4, v1

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v5, p2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionController;->getPostLayoutDvDp(FIIFF[F)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_15
    sub-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

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

    :goto_17
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_18
    sub-float/2addr v4, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move v2, v8

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    div-float v0, v5, v6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    if-lt p5, v1, :cond_2

    nop

    goto/32 :goto_10

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

    :goto_1d
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_1e
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    aget v2, p4, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_22
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_23
    goto/16 :goto_a

    nop

    nop

    :goto_24
    goto/32 :goto_9

    nop

    nop

    :goto_25
    move v8, v1

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

    :goto_26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_27
    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    const v2, 0x3727c5ac    # 1.0E-5f

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2a
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2b
    aget v2, p4, v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2f
    const/4 v1, 0x2

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
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_31
    add-float/2addr v5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_32
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_33
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    mul-float/2addr v2, v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_35
    div-float/2addr v4, v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_37
    and-int/lit8 v1, p5, 0x1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move-object v1, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_39
    aput v2, p4, v1

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

    :goto_3a
    goto/32 :goto_8

    nop

    nop

    :goto_3b
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

    nop

    nop

    :goto_3c
    move v8, v1

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_20

    nop

    nop

    :goto_3e
    goto :goto_3d

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_41
    move v6, p3

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

    :goto_42
    mul-float/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_43
    move-object v9, v1

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

    :goto_44
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v0

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public isAttachedToWindow()Z
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isAttachedToWindow()Z

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    if-ge v0, v1, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

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

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x15

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    const v0, 0x15

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v1, 0x13

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
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public isDelayedApplicationOfInitialState()Z
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

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public isInRotation()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public isInteractionEnabled()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public isViewTransitionEnabled(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewTransitionId"
        }
    .end annotation

    goto/32 :goto_6

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
    goto/32 :goto_4

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->isViewTransitionEnabled(I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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
.end method

.method public jumpToState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-eq v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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
    const/high16 v0, 0x3f800000    # 1.0f

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
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-eq v0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    goto :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public loadLayoutDescription(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionScene"
        }
    .end annotation

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_5

    nop

    nop

    nop

    :cond_0
    :goto_1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    const/16 v2, 0x11

    nop

    nop

    nop

    if-lt v1, v2, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    nop

    nop

    :goto_2
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    nop

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readFallback(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_3

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionHelper;

    nop

    invoke-virtual {v3, p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onFinishedMotionScene(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_3
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$1;

    nop

    nop

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$1;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    nop

    nop

    :cond_6
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getAutoTransition()I

    move-result v1

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_4
    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_14

    nop

    nop

    :goto_7
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "unable to parse MotionScene file"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

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
    if-nez p1, :cond_9

    nop

    goto/32 :goto_15

    nop

    :cond_9
    :try_start_1
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    if-ne v3, v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v2

    nop

    nop

    nop

    nop

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v2

    nop

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v2

    nop

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    :cond_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x13

    nop

    nop

    nop

    nop

    if-lt v2, v3, :cond_0

    nop

    nop

    nop

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_b

    nop

    nop

    nop

    goto/16 :goto_1

    nop

    :cond_b
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

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

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x14

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

    :goto_14
    throw v2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    const v0, 0x1b

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

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_c

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

    :cond_c
    goto/32 :goto_11

    nop
.end method

.method lookUpConstraintId(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

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
    goto/32 :goto_2

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected obtainVelocityTracker()Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->obtain()Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected onAttachedToWindow()V
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, -0x1

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

    :goto_4
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_47

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$4;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_39

    nop

    nop

    :goto_c
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onFinishedMotionScene(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

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

    :goto_10
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_a

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    :goto_19
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    :goto_1c
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_e

    nop

    nop

    :goto_24
    const v0, 0x1f

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/16 v1, 0x11

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

    :goto_28
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_6

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

    :goto_2a
    if-nez v0, :cond_7

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

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

    nop

    :goto_2c
    const v1, 0x18

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

    :goto_2d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

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

    :goto_30
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_31
    if-nez v1, :cond_9

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

    :cond_9
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

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

    :goto_34
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_35
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_36
    if-ge v0, v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_38
    goto/32 :goto_0

    nop

    nop

    :goto_39
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getAutoTransition()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_3d
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    goto/32 :goto_2d

    nop

    nop

    :goto_3e
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readFallback(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_30

    nop

    nop

    :goto_41
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_42
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_43
    if-ne v1, v2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_44
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$4;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

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

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v4, v5, v6, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->7357dd078832eae82b5e394c12117548m(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_6
    goto/16 :goto_2a

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_9
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    :goto_c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_f
    const v0, 0x9

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_10
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    return v1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->touchEvent(Landroid/view/MotionEvent;)V

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1a
    return v1

    nop

    nop

    :goto_1b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

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

    :goto_1d
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1e
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

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

    :goto_1f
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_20
    const/4 v4, -0x1

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

    :goto_21
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    :goto_23
    int-to-float v8, v8

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

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

    :goto_26
    if-nez v4, :cond_4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_27
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_29
    return v1

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

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

    :goto_2d
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

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

    :goto_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_31
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

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

    :goto_33
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v0, :cond_6

    nop

    goto/32 :goto_c

    nop

    :cond_6
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-ne v3, v4, :cond_7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v2

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3c
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_40
    if-eqz v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_9
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v1, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_42
    if-ne v4, v3, :cond_a

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

    :cond_a
    :goto_43
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegionId()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_45
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_46
    if-eqz v4, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_48
    int-to-float v4, v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

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

    :goto_4a
    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_4c

    nop

    nop

    :goto_4b
    new-instance v3, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4c
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_4d
    if-eqz v4, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_c
    goto/32 :goto_49

    nop

    nop

    :goto_4e
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_4f
    int-to-float v7, v7

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

    :goto_50
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_51
    int-to-float v6, v6

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

    :goto_52
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_d
    goto/32 :goto_14

    nop

    nop

    :goto_53
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_55
    if-nez v4, :cond_e

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_56
    if-eqz v2, :cond_f

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-int v3, p5, p3

    nop

    nop

    nop

    :try_start_0
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    nop

    if-ne v4, v2, :cond_0

    nop

    nop

    nop

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    nop

    nop

    nop

    nop

    nop

    if-eq v4, v3, :cond_1

    nop

    nop

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    :cond_1
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    nop

    nop

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    nop

    nop

    nop

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOldWidth:I

    nop

    nop

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOldHeight:I

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    :try_start_1
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    sub-int v2, p4, p2

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

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xf

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

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    :goto_d
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    :goto_10
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

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

    :goto_11
    rem-int v0, v0, v1

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
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

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
.end method

.method protected onMeasure(II)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_70

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    if-nez v2, :cond_1

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

    :cond_1
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sub-int/2addr v12, v8

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_2
    :goto_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v8, v9, :cond_3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/2addr v5, v6

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_7
    mul-float/2addr v10, v8

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v4, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v4, v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x0

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

    :goto_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_f
    mul-float/2addr v11, v8

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

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

    :goto_11
    sub-int/2addr v11, v8

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_12
    float-to-int v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_13
    if-eq v0, p1, :cond_6

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

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_7

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

    :cond_7
    goto/32 :goto_3e

    nop

    nop

    :goto_15
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_16
    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v6, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setMeasuredDimension(II)V

    :goto_19
    goto/32 :goto_2a

    nop

    nop

    :goto_1a
    iget v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingLeft()I

    move-result v5

    nop

    goto/32 :goto_5d

    nop

    nop

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

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1f
    iget v12, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_20
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_8

    nop

    goto/32 :goto_29

    nop

    :cond_8
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingTop()I

    move-result v4

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

    :goto_23
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_24
    if-eqz v8, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_9
    :goto_25
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v11, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

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

    :goto_27
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDirtyHierarchy:Z

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x1

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->529831e0ca5443cd9bdf1b821316fdd1m()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->1c090edfb3d6b344f983284ff927455cm()V

    goto/32 :goto_5f

    nop

    nop

    :goto_2c
    int-to-float v8, v11

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :goto_2e
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/high16 v9, -0x80000000

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

    :goto_30
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_31
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_32
    float-to-int v6, v10

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v5, -0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_36
    add-int/2addr v4, v5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v0, v1

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

    :goto_38
    invoke-virtual {v4, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setMeasuredId(II)V

    goto/32 :goto_c

    nop

    nop

    :goto_39
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    :goto_3a
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-float/2addr v10, v11

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

    :goto_3c
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3d
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

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

    :goto_3e
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    goto/32 :goto_6c

    nop

    nop

    :goto_3f
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

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

    :goto_41
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_42
    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    nop

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

    :goto_43
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :goto_44
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_45
    int-to-float v8, v12

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

    :goto_46
    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_47
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    :goto_49
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_4a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

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

    :goto_4b
    invoke-virtual {v4, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->isNotConfiguredWith(II)Z

    move-result v4

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

    nop

    :goto_4c
    if-lez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_5a

    nop

    :goto_4d
    if-eqz v8, :cond_c

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_c
    :goto_4e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

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

    :goto_50
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

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

    :goto_51
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_54
    add-int/2addr v7, v4

    nop

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

    :goto_55
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    int-to-float v9, v8

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

    :goto_57
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v2

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

    :goto_58
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-ne v8, v9, :cond_d

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4d

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingRight()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5e
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v0, 0x1

    nop

    nop

    :goto_60
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_62
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingBottom()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-ne v0, p2, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_1b

    nop

    nop

    :goto_66
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const v1, 0x6

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_68
    iget v11, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    int-to-float v10, v8

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6a
    add-float/2addr v9, v10

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

    :goto_6b
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v7

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6c
    return-void

    nop

    nop

    :goto_6d
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_6e
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

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

    :goto_6f
    if-nez v4, :cond_f

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_f
    :goto_70
    goto/32 :goto_58

    nop

    nop

    :goto_71
    goto :goto_65

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_73
    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_74
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_75
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_76
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_77
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_78
    add-int/2addr v6, v5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

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

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dx",
            "dy",
            "consumed",
            "type"
        }
    .end annotation

    goto/32 :goto_67

    nop

    nop

    :goto_0
    aget v9, p4, v10

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_1
    move/from16 v3, p3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    if-eqz v10, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_0
    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    if-nez v6, :cond_1

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_6
    cmpl-float v11, v10, v7

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v6

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_8
    if-eqz v4, :cond_2

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_2
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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

    :goto_a
    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_b
    const-wide v13, 0x3e112e0be826d695L    # 1.0E-9

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v6

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-float v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_f
    cmpg-float v12, v6, v8

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_10
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_11
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v11, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_78

    nop

    nop

    :goto_13
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_14
    const/16 v8, 0x15

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

    :goto_15
    if-nez v6, :cond_5

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    :goto_16
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_17
    mul-double/2addr v11, v13

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v4, v11, v12}, Landroidx/constraintlayout/motion/widget/MotionScene;->processScrollMove(FF)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v9}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v10

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1a
    and-int/lit8 v10, v10, 0x4

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_1b
    if-gez v7, :cond_6

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1e
    if-gez v12, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_1f
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_20
    int-to-float v11, v2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_22
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_24
    int-to-float v12, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_25
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    :goto_27
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v8, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v6

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    move-result v6

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sub-long v11, v7, v11

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
    if-ge v7, v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_8
    goto/32 :goto_34

    nop

    nop

    :goto_2e
    if-nez v11, :cond_9

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v6, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_33
    long-to-double v11, v11

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1, v9}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v6

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_37
    if-nez v5, :cond_b

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegionId()I

    move-result v7

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_39
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    int-to-float v11, v2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_4e

    nop

    :goto_3c
    if-gtz v7, :cond_d

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_d
    :goto_3d
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v6, :cond_e

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_3f
    double-to-float v11, v11

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_40
    cmpl-float v7, v6, v8

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_42
    iget-wide v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_48
    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionLayout$3;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-ne v7, v8, :cond_f

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_4a
    move-object v0, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v10, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v9, -0x1

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

    :goto_4d
    if-nez v6, :cond_11

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    cmpl-float v10, v10, v8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_51
    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_52
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_53
    aput v3, p4, v10

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_55
    move/from16 v9, p3

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMoveWhenScrollAtTop()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_58
    and-int/2addr v6, v10

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-lez v12, :cond_12

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

    :cond_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5a
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_5b
    cmpg-float v12, v11, v8

    nop

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

    :goto_5c
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5d
    return-void

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_5f
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_60
    int-to-float v11, v3

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v9, :cond_13

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :cond_13
    :goto_62
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_63
    cmpl-float v11, v6, v11

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

    :goto_64
    int-to-float v11, v3

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_65
    if-eqz v9, :cond_14

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_14
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v4, v6, v11}, Landroidx/constraintlayout/motion/widget/MotionScene;->getProgressDirection(FF)F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_67
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_68
    aget v9, p4, v9

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_69
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

    nop

    :goto_6a
    const/4 v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6b
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-ne v8, v7, :cond_15

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_6d
    if-nez v6, :cond_16

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_5c

    nop

    nop

    :goto_6e
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_70
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v8

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_71
    cmpl-float v7, v11, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_72
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_75
    move/from16 v2, p2

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

    :goto_76
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_77
    invoke-direct {v7, p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$3;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    goto/32 :goto_21

    nop

    nop

    :goto_78
    aput v2, p4, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_79
    if-nez v10, :cond_17

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_17
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0
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
            "target",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "type"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "type",
            "consumed"
        }
    .end annotation

    goto/32 :goto_8

    nop

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p2, :cond_1

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

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget v0, p7, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    aput v0, p7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    add-int/2addr v2, p5

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    if-nez p3, :cond_3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput v2, p7, v0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    aget v2, p7, v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    const/4 v0, 0x1

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

    :goto_18
    add-int/2addr v0, p4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes",
            "type"
        }
    .end annotation

    goto/32 :goto_f

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

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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
    const v1, 0xa

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1b

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
.end method

.method onNewStateAttachHandlers()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x18

    nop

    nop

    goto/32 :goto_c

    nop

    nop

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
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setupTouch()V

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, -0x1

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

    nop

    :goto_1b
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_16

    nop
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutDirection"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1

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

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes",
            "type"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

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

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

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

    nop

    nop

    :goto_5
    goto/16 :goto_11

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

    nop

    :goto_7
    and-int/lit8 v0, v0, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_b
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v0

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

    :goto_e
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

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

    :goto_f
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return v0

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "type"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

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
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

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

    :goto_2
    cmpl-float v2, v1, v2

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

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x8

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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
    goto/16 :goto_18

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    div-float/2addr v2, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    const v1, 0xf

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_e
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->processScrollUp(FF)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    div-float/2addr v3, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->isDragStarted()Z

    move-result v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_c
    const v1, 0x7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_13
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_1e

    nop

    :goto_1d
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    :goto_20
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    :goto_22
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isTransitionFlag(I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_24
    invoke-virtual {v1, p1, v2, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->processTouchEvent(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_27
    return v1

    nop

    nop

    :goto_28
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_d
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10
    goto/32 :goto_18

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isUseOnHide()Z

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    const v0, 0x4

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isDecorator()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_19
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_34

    nop

    nop

    :goto_1e
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_4

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

    :cond_4
    goto/32 :goto_27

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    :goto_23
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isUsedOnShow()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_26
    goto/32 :goto_15

    nop

    nop

    :goto_27
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_28
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionHelper;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_29
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_2c
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_21

    nop

    :goto_2f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    :goto_32
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_7

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

    :cond_7
    goto/32 :goto_2e

    nop

    :goto_34
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

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

    :goto_37
    if-nez v1, :cond_8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_30

    nop

    nop

    nop
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

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

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    :goto_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected parseLayoutDescription(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_0

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
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

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
.end method

.method public rebuildMotion()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    const v0, 0x17

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const-string v1, "This method is deprecated. Please call rebuildScene() instead."

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

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "MotionLayout"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public rebuildScene()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public removeTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
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
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

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

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public requestLayout()V
    .locals 5

    goto/32 :goto_16

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

    goto/32 :goto_24

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    const/4 v1, 0x2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v2, v2, 0x1

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

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    const/4 v2, 0x0

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionController;->remeasure()V

    goto/32 :goto_6

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

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_12
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_14
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_14

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
    goto/32 :goto_5

    nop

    nop

    :goto_19
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_3

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lt v2, v1, :cond_4

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

    :cond_4
    goto/32 :goto_26

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    :goto_20
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_24
    if-eq v0, v1, :cond_7

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

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

    :goto_27
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getLayoutDuringTransition()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_28
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_29
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop
.end method

.method public rotateTo(II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "duration"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gtz p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

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

    :goto_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$2;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_7
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1c

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

    :goto_9
    add-int/2addr v3, v0

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
    new-instance v5, Landroidx/constraintlayout/motion/utils/ViewState;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    move-object v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_d
    const/4 v2, -0x1

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
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    :goto_11
    const/4 v0, 0x2

    nop

    nop

    :goto_12
    goto/32 :goto_2c

    nop

    nop

    :goto_13
    if-gt v2, v3, :cond_2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    div-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v5}, Landroidx/constraintlayout/motion/utils/ViewState;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1a
    if-eqz v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

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

    :goto_1c
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1d
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1e
    int-to-float v2, p2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int/lit8 v3, v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateHeight:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_22
    if-lt v2, v0, :cond_4

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    :goto_23
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewState;

    nop

    goto/32 :goto_1a

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

    nop

    :goto_25
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/utils/ViewState;->getState(Landroid/view/View;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_28
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2b
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v1

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

    :goto_2f
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

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

    :goto_30
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_22

    nop

    nop

    :goto_33
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    goto/32 :goto_26

    nop

    nop

    :goto_37
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

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

    :goto_39
    goto :goto_32

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_d

    nop

    nop

    :goto_3b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateWidth:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3d
    const/high16 v3, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

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

    :goto_40
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

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

    :goto_41
    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$2;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/32 :goto_3

    nop

    nop

    :goto_44
    rem-int/lit8 v2, v2, 0x4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

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

    :goto_47
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

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
.end method

.method public scheduleTransitionTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    const/4 v1, -0x1

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

    :goto_2
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    new-array v0, v0, [I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    array-length v1, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

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

    :goto_8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

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

    :goto_9
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

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

    :goto_b
    const v1, 0x1d

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

    :goto_c
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    array-length v1, v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

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

    :goto_14
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_1d

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
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    :goto_1b
    if-le v1, v2, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x1e

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    const/4 v0, 0x4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1f
    aput p1, v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    mul-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v0

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

.method public setDebugMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debugMode"
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
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

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
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayedApply"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public setInteractionEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
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
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

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

.method public setInterpolatedProgress(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

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

    :goto_b
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_12
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

    :goto_13
    if-nez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setOnHide(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x9

    nop

    nop

    goto/32 :goto_12

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

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    if-lt v1, v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

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

    :goto_b
    goto :goto_5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    :goto_16
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public setOnShow(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    if-lt v1, v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    const v1, 0xa

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

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

    :goto_16
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public setProgress(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_24

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

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

    :goto_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_0
    goto/32 :goto_42

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_10
    cmpl-float v1, p1, v2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_39

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_16
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    cmpl-float v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1d
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

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

    :goto_1e
    const-string v1, "MotionLayout"

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1f
    cmpg-float v1, p1, v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_21
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_44

    nop

    nop

    :goto_26
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :goto_28
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_29
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

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
    const/4 v0, 0x1

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

    :goto_2b
    cmpl-float v1, p1, v2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2d
    const/4 v1, 0x0

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

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    cmpl-float v1, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_31
    if-gtz v1, :cond_5

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

    :cond_5
    :goto_32
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_33
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

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

    :goto_38
    return-void

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v3, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    goto/32 :goto_11

    nop

    nop

    :goto_3d
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_6

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

    :cond_6
    goto/32 :goto_57

    nop

    nop

    :goto_3f
    cmpl-float v0, v1, v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

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

    :goto_41
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setProgress(F)V

    goto/32 :goto_2e

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    :goto_43
    goto/32 :goto_2a

    nop

    nop

    :goto_44
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_45
    const-wide/16 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_46
    if-gez v1, :cond_7

    nop

    goto/32 :goto_25

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_47
    if-eq v1, v2, :cond_8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_48
    cmpg-float v1, p1, v0

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

    nop

    nop

    :goto_49
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :goto_4a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_9
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-eq v0, v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4e
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    :goto_4f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_50
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_51
    cmpl-float v0, v1, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_52
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_53
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_55
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_56
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_58
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_59
    if-lez v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_13

    nop

    :goto_5b
    if-gez v1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5c
    if-eqz v0, :cond_d

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

    :cond_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setProgress(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "velocity"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    cmpl-float v1, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-gtz v1, :cond_0

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
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    cmpl-float v1, p1, v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    :goto_9
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    goto/32 :goto_22

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

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

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

    :goto_15
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_18
    if-gtz v1, :cond_3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1a
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

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

    :goto_1b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :goto_1d
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setProgress(F)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_20
    cmpl-float v1, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    :goto_22
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setVelocity(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_25
    cmpl-float v1, p2, v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2a
    move v0, v2

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_c

    nop

    nop

    :goto_2c
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto/32 :goto_28

    nop

    nop

    :goto_2d
    goto/32 :goto_f

    nop

    :goto_2e
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_30
    const/high16 v1, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_31
    cmpl-float v1, p2, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

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
    return-void

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method setStartState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beginId"
        }
    .end annotation

    goto/32 :goto_d

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setStartState(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop
.end method

.method public setState(III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "screenWidth",
            "screenHeight"
        }
    .end annotation

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->updateConstraints(IFF)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_19

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const/4 v0, -0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    const v0, 0xe

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

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_d
    int-to-float v2, p3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
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

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_9

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    int-to-float v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

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
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f9c4f9809076d7329535ac061f5efeabm()V

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

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

    :goto_6
    goto :goto_8

    nop

    nop

    :pswitch_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->ordinal()I

    move-result v2

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

    :goto_a
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f9c4f9809076d7329535ac061f5efeabm()V

    :goto_b
    goto/32 :goto_28

    nop

    nop

    :goto_c
    if-eq p1, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    :goto_d
    if-eq p1, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

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

    :goto_f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

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

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    goto/32 :goto_20

    nop

    nop

    :goto_13
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    if-eq p1, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    :goto_15
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$5;->$SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState:[I

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

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    if-eq p1, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    if-eq v0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    :goto_1f
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

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

    :goto_20
    goto/16 :goto_8

    nop

    :pswitch_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_22
    if-eq v0, v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eq p1, v1, :cond_7

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

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
    aget v1, v1, v2

    nop

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_6

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_27
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public setTransition(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transitionId"
        }
    .end annotation

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    :goto_3
    const/high16 v2, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_6
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v2, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_9
    goto/16 :goto_4d

    nop

    nop

    :goto_a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :goto_c
    goto/32 :goto_53

    nop

    nop

    :goto_d
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_e
    const/4 v3, 0x1

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

    :goto_f
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setStartState(I)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_15
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_16
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_1c
    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1f
    if-eq v3, v4, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    goto/32 :goto_12

    nop

    nop

    :goto_23
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_25
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

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

    :goto_26
    const-string v4, " transitionToStart "

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_65

    nop

    nop

    :goto_2a
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

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

    :goto_2b
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_22

    nop

    nop

    :goto_2c
    if-eqz v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2e
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v3, 0x0

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

    nop

    :goto_30
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

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

    :goto_31
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_32
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_33
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_37
    cmpl-float v3, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_38
    const-string v4, "MotionLayout"

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v2

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

    :goto_3a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

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

    :goto_3b
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_17

    nop

    nop

    :goto_3d
    goto/32 :goto_3e

    nop

    nop

    :goto_3e
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_20

    nop

    nop

    :goto_40
    if-eqz v3, :cond_5

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    goto/32 :goto_4e

    nop

    nop

    :goto_42
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

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

    :goto_44
    cmpl-float v3, v2, v4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_45
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

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

    :goto_46
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_48
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_49
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4a
    if-nez v3, :cond_6

    nop

    goto/32 :goto_a

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    :goto_4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    :goto_4c
    move v4, v2

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    :goto_4f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v6

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_55
    if-lez v0, :cond_7

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    :goto_56
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_8
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_58
    cmpl-float v3, v3, v2

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

    :goto_59
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_5c
    goto/32 :goto_56

    nop

    nop

    :goto_5d
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5e
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5f
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_60
    if-eqz v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_9
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_62
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_35

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v2

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

    :goto_64
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_65
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public setTransition(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "beginId",
            "endId"
        }
    .end annotation

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    goto/32 :goto_17

    nop

    nop

    :goto_1
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

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

    :goto_2
    invoke-virtual {v3, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

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

    :goto_3
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_13
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_1f

    nop

    nop

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

    goto/32 :goto_20

    nop

    nop

    :goto_15
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setStartState(I)V

    goto/32 :goto_e

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_24

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    :goto_1b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1

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

    :goto_1f
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

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

    :goto_20
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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

    :goto_21
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

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

    :goto_22
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    :goto_23
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_24
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x1d

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

    :goto_27
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    :goto_28
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop
.end method

.method protected setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transition"
        }
    .end annotation

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

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

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

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

    :goto_7
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    :goto_10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    const v0, 0x6

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

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v0, v2, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

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

    :goto_19
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

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

    :goto_1a
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_1e
    const v1, 0x13

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

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

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_24
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x1

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

    :goto_26
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isTransitionFlag(I)Z

    move-result v0

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

    :goto_28
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

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

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

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

    :goto_2c
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setMeasuredId(II)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_2f
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eq v1, v2, :cond_3

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

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_32
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_33
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_34
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

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

    :goto_35
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_36
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

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

    :goto_37
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

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

    :goto_3b
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3c
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

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

    :goto_3e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_3f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_40
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

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

    :goto_41
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_42
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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
.end method

.method public setTransitionDuration(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "milliseconds"
        }
    .end annotation

    goto/32 :goto_f

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const-string v1, "MotionScene not defined"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setDuration(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "MotionLayout"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    const v0, 0x3

    nop

    nop

    goto/32 :goto_8

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

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
    return-void

    nop

    nop
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_a

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
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setTransitionState(Landroid/os/Bundle;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

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

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    return-object v1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    :goto_5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    const-string v2, " Dpos/Dt:"

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

    :goto_b
    const-string v2, "->"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x10

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

    :goto_d
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

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

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

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

    :goto_10
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    const-string v2, " (pos:"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

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

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_1c
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public touchAnimateTo(IFF)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touchUpMode",
            "position",
            "currentVelocity"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxVelocity()F

    move-result v7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringDamping()F

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_13
    move v2, p2

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_14
    move v2, p2

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

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v1, v1

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

    :goto_17
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

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

    :goto_18
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

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

    :goto_19
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

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

    :goto_1a
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxVelocity()F

    move-result v6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1d
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_20
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringMass()F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_21
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :cond_2
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_24
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_3
    :goto_25
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_29
    move v3, p3

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_2a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_2b
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2c
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, p3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->config(FFF)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

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

    nop

    :goto_30
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

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

    :goto_32
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    goto/32 :goto_31

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

    goto/32 :goto_7d

    nop

    nop

    :goto_34
    const/4 v0, 0x0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_36
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/high16 v2, 0x447a0000    # 1000.0f

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_38
    const v1, 0x16

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3a
    goto/16 :goto_27

    nop

    :pswitch_0
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_3c
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_3d
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStopThreshold()F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, p3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->config(FFF)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v0, 0x2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move v4, p3

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

    :goto_41
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getAutoCompleteMode()I

    move-result v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_43
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

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

    nop

    :goto_45
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_46
    cmpl-float v0, v0, p2

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_49
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_4b
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_4c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

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

    :goto_4e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_51
    move v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_52
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_53
    goto/16 :goto_27

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_79

    nop

    nop

    :goto_54
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_55
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_56
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

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

    :goto_57
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_58
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v1

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_59
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_5c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

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

    :goto_5d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-eq p1, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    :cond_5
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_61
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/motion/utils/StopLogic;->springConfig(FFFFFFFI)V

    :goto_62
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_63
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_64
    goto :goto_67

    nop

    nop

    :goto_65
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_66
    goto :goto_60

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_5f

    nop

    nop

    :goto_68
    return-void

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_6b
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_6c
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

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

    :goto_6d
    goto/16 :goto_27

    nop

    :pswitch_2
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto :goto_62

    nop

    :goto_6f
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_71
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_72
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_74
    div-float/2addr v1, v2

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

    :goto_75
    invoke-static {p3, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->willJump(FFF)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_76
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :goto_77
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringBoundary()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_79
    if-ne p1, v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStiffiness()F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_7b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7d
    if-lez v0, :cond_7

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

    :cond_7
    goto/32 :goto_1b

    nop

    :goto_7e
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

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

    :goto_7f
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

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

    nop

    :goto_80
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_53

    nop

    nop
.end method

.method public touchSpringTo(FF)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "currentVelocity"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

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

    :goto_2
    cmpl-float v0, v0, p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3
    int-to-float v1, v1

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

    :goto_4
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

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

    :goto_5
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringMass()F

    move-result v6

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_c
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringDamping()F

    move-result v8

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

    :goto_f
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x9

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v2, 0x447a0000    # 1000.0f

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

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_16
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

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

    :goto_17
    const/4 v0, 0x1

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

    :goto_18
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual/range {v2 .. v10}, Landroidx/constraintlayout/motion/utils/StopLogic;->springConfig(FFFFFFFI)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_21
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_22
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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

    :goto_24
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStiffiness()F

    move-result v7

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_28
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    goto/32 :goto_14

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
    goto/32 :goto_13

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStopThreshold()F

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_2f
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringBoundary()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_30
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    move v5, p2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_34
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_36
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

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

    nop
.end method

.method public transitionToEnd()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public transitionToEnd(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onComplete"
        }
    .end annotation

    goto/32 :goto_2

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
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

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
.end method

.method public transitionToStart()V
    .locals 1

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

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public transitionToState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

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

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

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

    :goto_b
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1, v0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(III)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public transitionToState(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "duration"
        }
    .end annotation

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0, v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(IIII)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const/4 v0, -0x1

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

    :goto_8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public transitionToState(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "screenWidth",
            "screenHeight"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(IIII)V

    goto/32 :goto_2

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

.method public transitionToState(IIII)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "screenWidth",
            "screenHeight",
            "duration"
        }
    .end annotation

    goto/32 :goto_d

    nop

    nop

    :goto_0
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v2, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

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
    const/4 v14, 0x0

    nop

    nop

    :goto_5
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_7
    if-lt v11, v6, :cond_0

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_0
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    div-float/2addr v2, v8

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_92

    nop

    :goto_a
    move/from16 v1, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_112

    nop

    nop

    :goto_d
    const v0, 0x3

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_e
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_f
    mul-float/2addr v1, v11

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->2412592798aa7e58b85444a0965f8c41m()V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v8, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_13
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_14
    if-eq v1, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_90

    nop

    nop

    :goto_15
    goto/16 :goto_ad

    nop

    nop

    :goto_16
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v11, v14}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_18
    add-float v9, v16, v15

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_19
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_1a
    if-gtz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto/32 :goto_36

    nop

    nop

    :goto_1c
    if-eq v6, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_1d
    move/from16 v7, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStaggered()F

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_1f
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_20
    check-cast v12, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

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

    nop

    :goto_21
    iput-wide v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    iput-wide v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_25
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_7a

    nop

    nop

    :goto_27
    goto/32 :goto_5a

    nop

    nop

    :goto_28
    int-to-float v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lt v8, v6, :cond_4

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v11

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sub-float v16, v10, v11

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

    :goto_2d
    const/high16 v10, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_2e
    goto/16 :goto_bf

    nop

    nop

    :goto_2f
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_8e

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_53

    nop

    nop

    :goto_33
    move/from16 v5, p2

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_34
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    :goto_35
    goto/32 :goto_ca

    nop

    nop

    :goto_36
    if-gtz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move-wide/from16 v15, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_39
    move/from16 v21, v15

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3a
    if-eq v2, v4, :cond_6

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

    :goto_3b
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto/32 :goto_f3

    nop

    nop

    :goto_3c
    goto/16 :goto_6f

    nop

    nop

    :goto_3d
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v12, v11}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    goto/32 :goto_6

    nop

    nop

    :goto_3f
    sub-float v16, v13, v12

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

    :goto_40
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput v1, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_45
    div-float v1, v10, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_46
    int-to-float v6, v1

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_47
    move v4, v2

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_c5

    nop

    :goto_49
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_4b
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_4c
    invoke-virtual {v6, v3, v11}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v12, :cond_7

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move/from16 v16, v13

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

    :goto_4f
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_50
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez v2, :cond_8

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move/from16 v5, p2

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

    nop

    :goto_56
    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_57
    sub-float/2addr v1, v12

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_58
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_59
    move-object/from16 v20, v14

    nop

    nop

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

    :goto_5a
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_5b
    move/from16 v21, v15

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_5c
    if-eqz v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :cond_9
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5e
    move/from16 v13, v17

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v17

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

    :goto_61
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_62
    check-cast v18, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_63
    const/4 v11, 0x0

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

    :goto_64
    add-int/lit8 v15, v21, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-lt v15, v6, :cond_a

    nop

    goto/32 :goto_11c

    nop

    nop

    :cond_a
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_66
    if-nez v2, :cond_b

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_67
    if-eqz v12, :cond_c

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_c
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_68
    move/from16 v21, v15

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_69
    div-float v1, v1, v16

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move-object v11, v14

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const/4 v11, 0x0

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_6c
    move/from16 v9, p1

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_6d
    if-nez v11, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v13, v12}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    :goto_6f
    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_70
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

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

    :goto_71
    if-gtz v1, :cond_e

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

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

    :goto_73
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_74
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_75
    const/4 v9, 0x0

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

    :goto_76
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

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

    :goto_77
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v19

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

    nop

    :goto_78
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v11

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_79
    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    :goto_7a
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_7b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    move v12, v2

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    cmpl-float v12, v11, v9

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_7f
    return-void

    nop

    :goto_80
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_81
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_82
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_83
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_84
    if-nez v12, :cond_f

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

    :cond_f
    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_85
    move-object v14, v11

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_86
    int-to-float v8, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_87
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v2

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    int-to-float v2, v1

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

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

    :goto_8c
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_8d
    const/4 v11, 0x0

    nop

    :goto_8e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_8f
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_ab

    nop

    :goto_92
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v12, v0, v13}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-eqz v18, :cond_10

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_a4

    nop

    nop

    :goto_95
    goto/16 :goto_5

    nop

    :goto_96
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_97
    div-float/2addr v6, v8

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_98
    div-float/2addr v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_99
    move/from16 v21, v15

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    move/from16 v13, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_9d
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_a1
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_a3
    new-instance v12, Landroidx/constraintlayout/motion/widget/MotionController;

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

    :goto_a4
    move/from16 v21, v15

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

    :goto_a5
    goto/16 :goto_f1

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_aa
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_ae
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_103

    nop

    nop

    :goto_b0
    if-gtz v1, :cond_11

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_115

    nop

    nop

    :goto_b1
    move/from16 v1, p4

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    const v13, -0x800001

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

    :goto_b3
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

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

    nop

    :goto_b4
    div-float/2addr v2, v8

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_b5
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_b6
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

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

    nop

    :goto_b7
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_b8
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_b9
    const/4 v9, 0x0

    nop

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

    :goto_ba
    if-eq v6, v4, :cond_12

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    const/4 v1, 0x1

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

    nop

    :goto_bc
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v6

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

    :goto_bd
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v15

    nop

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

    :goto_be
    move v15, v11

    nop

    nop

    :goto_bf
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v14

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_c1
    move v15, v11

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-lt v8, v6, :cond_13

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    :goto_c5
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    add-float v9, v16, v15

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    move v4, v9

    nop

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    move-object/from16 v18, v11

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

    nop

    nop

    :goto_ca
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_cb
    if-lez v0, :cond_14

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_91

    nop

    :goto_cc
    if-ne v2, v3, :cond_15

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :cond_15
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v2, v4, v9, v6, v8}, Landroidx/constraintlayout/widget/StateSet;->convertToConstraintSet(IIFF)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v3, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_d1
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

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

    :goto_d2
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    div-float/2addr v2, v8

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_d4
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_d6
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    add-int/lit8 v11, v11, 0x1

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

    :goto_d8
    move/from16 v21, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_d9
    new-instance v3, Landroid/util/SparseArray;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    nop

    nop

    :goto_db
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v13, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v13

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    check-cast v14, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    move v12, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_e2
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_e6
    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v12

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_e7
    const/4 v8, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e8
    add-int/lit8 v14, v14, 0x1

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

    :goto_e9
    add-int/lit8 v15, v21, 0x1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_ed
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_ee
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    :goto_ef
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    const/4 v8, 0x0

    nop

    :goto_f1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    if-lt v15, v6, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_16
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

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

    nop

    :goto_f4
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_f5
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    move/from16 v14, v16

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    goto/16 :goto_9a

    nop

    :goto_f9
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_fa
    sub-float v1, v11, v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_fb
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_fc
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_fd
    if-lt v14, v6, :cond_17

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_ff
    if-ne v2, v3, :cond_18

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_101
    move-object/from16 v11, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_102
    if-eqz v14, :cond_19

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

    :cond_19
    goto/32 :goto_68

    nop

    nop

    :goto_103
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_104
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_106
    div-float/2addr v6, v8

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_107
    move/from16 v7, p3

    nop

    :goto_108
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_109
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    goto/32 :goto_11

    nop

    nop

    :goto_10a
    check-cast v12, Landroidx/constraintlayout/motion/widget/MotionHelper;

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_10b
    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10c
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_10d
    move-wide/from16 v15, v19

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    check-cast v14, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_10f
    add-float v1, v14, v15

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v11, v12, v2, v13}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v15

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    int-to-float v6, v5

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

    :goto_115
    int-to-float v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_116
    iput v1, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

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

    :goto_117
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_118
    move/from16 v9, p1

    nop

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

    nop

    :goto_119
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    nop

    nop

    :goto_11a
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    goto/16 :goto_c2

    nop

    nop

    :goto_11c
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_11d
    goto/16 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    goto/32 :goto_118

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop
.end method

.method public updateState()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

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

    :goto_6
    const v0, 0x5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    const v1, 0xd

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateId",
            "set"
        }
    .end annotation

    goto/32 :goto_7

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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    if-eq v0, p1, :cond_1

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

    :goto_5
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setConstraintSet(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public updateStateAnimate(ILandroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stateId",
            "set",
            "duration"
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
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, v1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget v0, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x12

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

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

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setDuration(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    sget v3, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_0

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

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

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
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

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

    :goto_18
    const v0, 0x8

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_1a
    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(ILandroidx/constraintlayout/motion/widget/MotionScene;II)V

    goto/32 :goto_d

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    sget v0, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq v0, p1, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public varargs viewTransition(I[Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewTransitionId",
            "view"
        }
    .end annotation

    goto/32 :goto_11

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->viewTransition(I[Landroid/view/View;)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    const-string v0, "MotionLayout"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, " no motionScene"

    nop

    goto/32 :goto_e

    nop

    nop
.end method
