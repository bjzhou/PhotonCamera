.class public Landroidx/constraintlayout/motion/widget/ViewTransition;
.super Ljava/lang/Object;
.source "ViewTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;
    }
.end annotation


# static fields
.field static final ANTICIPATE:I = 0x6

.field static final BOUNCE:I = 0x4

.field public static final CONSTRAINT_OVERRIDE:Ljava/lang/String; = "ConstraintOverride"

.field public static final CUSTOM_ATTRIBUTE:Ljava/lang/String; = "CustomAttribute"

.field public static final CUSTOM_METHOD:Ljava/lang/String; = "CustomMethod"

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field public static final KEY_FRAME_SET_TAG:Ljava/lang/String; = "KeyFrameSet"

.field static final LINEAR:I = 0x3

.field public static final ONSTATE_ACTION_DOWN:I = 0x1

.field public static final ONSTATE_ACTION_DOWN_UP:I = 0x3

.field public static final ONSTATE_ACTION_UP:I = 0x2

.field public static final ONSTATE_SHARED_VALUE_SET:I = 0x4

.field public static final ONSTATE_SHARED_VALUE_UNSET:I = 0x5

.field static final OVERSHOOT:I = 0x5

.field private static final SPLINE_STRING:I = -0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final UNSET:I = -0x1

.field static final VIEWTRANSITIONMODE_ALLSTATES:I = 0x1

.field static final VIEWTRANSITIONMODE_CURRENTSTATE:I = 0x0

.field static final VIEWTRANSITIONMODE_NOSTATE:I = 0x2

.field public static final VIEW_TRANSITION_TAG:Ljava/lang/String; = "ViewTransition"


# instance fields
.field private mClearsTag:I

.field mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

.field mContext:Landroid/content/Context;

.field private mDefaultInterpolator:I

.field private mDefaultInterpolatorID:I

.field private mDefaultInterpolatorString:Ljava/lang/String;

.field private mDisabled:Z

.field private mDuration:I

.field private mId:I

.field private mIfTagNotSet:I

.field private mIfTagSet:I

.field mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

.field private mOnStateTransition:I

.field private mPathMotionArc:I

.field private mSetsTag:I

.field private mSharedValueCurrent:I

.field private mSharedValueID:I

.field private mSharedValueTarget:I

.field private mTargetId:I

.field private mTargetString:Ljava/lang/String;

.field private mUpDuration:I

.field mViewTransitionMode:I

.field set:Landroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method private 906544bc050dcb9fe53ce87dc5a6ca26m(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transition",
            "view"
        }
    .end annotation

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    new-instance v2, Landroidx/constraintlayout/motion/widget/KeyFrames;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setDuration(I)V

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_7

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

    :goto_a
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_24

    nop

    :goto_c
    invoke-virtual {p1, v0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setInterpolatorInfo(ILjava/lang/String;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v4, :cond_2

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

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/Key;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/motion/widget/Key;->setViewId(I)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

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

    :goto_18
    check-cast v4, Landroidx/constraintlayout/motion/widget/Key;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setPathMotionArc(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->addKeyFrame(Landroidx/constraintlayout/motion/widget/KeyFrames;)V

    :goto_1f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_25

    nop

    nop

    :goto_24
    goto/32 :goto_27

    nop

    :goto_25
    goto/32 :goto_1b

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

    :goto_27
    goto/32 :goto_23

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    sput-object v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->TAG:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "ViewTransition"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
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
    const/4 v0, -0x1

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    nop
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    goto/32 :goto_28

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

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xb

    nop

    goto/32 :goto_31

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

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_8
    const/4 v2, 0x0

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
    if-ne v4, v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    const v0, 0x13

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
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_c
    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x74f4db17 -> :sswitch_4
        -0x49df9cec -> :sswitch_3
        0x3b205fa -> :sswitch_2
        0x15d883d2 -> :sswitch_1
        0x6acd460b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

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

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

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

    :goto_18
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

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

    :goto_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v6, "ViewTransition"

    nop

    nop

    nop

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    goto/16 :goto_c

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    goto/16 :goto_d

    nop

    :catch_1
    move-exception v0

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
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mContext:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_21
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_23
    move v4, v5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

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

    :goto_25
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_27
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_28
    const/4 v5, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_29
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_3

    nop

    nop

    nop

    return-void

    nop

    :pswitch_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    nop

    move-object v2, v7

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    nop

    nop

    sparse-switch v7, :sswitch_data_0

    :cond_2
    goto :goto_2b

    nop

    nop

    nop

    nop

    nop

    :sswitch_0
    const-string v5, "CustomAttribute"

    nop

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    const/4 v5, 0x3

    nop

    nop

    nop

    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    const-string v5, "CustomMethod"

    nop

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x4

    nop

    nop

    goto :goto_2c

    nop

    nop

    nop

    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    move v5, v1

    nop

    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    const-string v6, "KeyFrameSet"

    nop

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_2c

    nop

    nop

    nop

    nop

    :sswitch_4
    const-string v5, "ConstraintOverride"

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    goto :goto_2c

    nop

    :goto_2b
    move v5, v0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    packed-switch v5, :pswitch_data_1

    sget-object v5, Landroidx/constraintlayout/motion/widget/ViewTransition;->TAG:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto :goto_2d

    nop

    nop

    nop

    nop

    :pswitch_3
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    nop

    nop

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p2, v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;->parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    invoke-static {p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->buildDelta(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    nop

    nop

    nop

    nop

    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    nop

    nop

    nop

    goto/16 :goto_2e

    nop

    nop

    :pswitch_5
    new-instance v5, Landroidx/constraintlayout/motion/widget/KeyFrames;

    nop

    nop

    nop

    nop

    invoke-direct {v5, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    nop

    nop

    nop

    goto :goto_2e

    nop

    nop

    :pswitch_6
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->cf4e0ff21b998c90b2d8ab64ba298a41m(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2e

    nop

    nop

    nop

    :goto_2d
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    const-string v7, " unknown tag "

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroidx/constraintlayout/motion/widget/ViewTransition;->TAG:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ".xml:"

    nop

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v7

    nop

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    goto :goto_2f

    nop

    :pswitch_7
    nop

    :cond_3
    :goto_2f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_32
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop
.end method

.method private cf4e0ff21b998c90b2d8ab64ba298a41m(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_1
    if-eq v4, v5, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v5, v6, :cond_1

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v4, v5, :cond_2

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_43

    nop

    nop

    :goto_4
    iget v8, v5, Landroid/util/TypedValue;->type:I

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_62

    nop

    :goto_6
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_7
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_36

    nop

    :goto_a
    goto/32 :goto_41

    nop

    nop

    :goto_b
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_62

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_30

    nop

    nop

    :goto_e
    goto/16 :goto_62

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_10
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

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

    :goto_13
    iput v7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eq v4, v5, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_18
    goto/16 :goto_47

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    :goto_1a
    sget-boolean v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_1c
    iget v5, v5, Landroid/util/TypedValue;->type:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    if-gtz v6, :cond_4

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

    :cond_4
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eq v8, v10, :cond_5

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eq v4, v5, :cond_6

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

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_26
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_27
    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_28
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_viewTransitionMode:I

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

    :goto_29
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9

    nop

    :goto_2b
    goto/32 :goto_a

    nop

    :goto_2c
    iput v9, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_2d
    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_2e
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_2f
    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_30
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_clearsTag:I

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

    :goto_31
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

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

    :goto_32
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

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

    :goto_35
    return-void

    nop

    :goto_36
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_38
    goto/16 :goto_47

    nop

    :goto_39
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3a
    if-lt v3, v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :cond_8
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_SharedValue:I

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

    :goto_3c
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_87

    nop

    nop

    :goto_3e
    if-eq v4, v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_40
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_41
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

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

    :goto_43
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_44
    const/4 v10, 0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_45
    iget v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_62

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_4b
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

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

    :goto_4c
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

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

    :goto_4d
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4e
    if-eq v4, v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_a
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4f
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_50
    const/4 v7, -0x1

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_51
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_onStateTransition:I

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

    :goto_52
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_62

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_56
    if-eq v5, v7, :cond_b

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_b
    goto/32 :goto_5b

    nop

    nop

    :goto_57
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_android_id:I

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

    :goto_58
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_59
    if-eq v4, v5, :cond_c

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_c
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-eq v4, v5, :cond_d

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5e
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_ifTagSet:I

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_5f
    if-eq v4, v5, :cond_e

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_e
    goto/32 :goto_29

    nop

    nop

    :goto_60
    const-string v8, "/"

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

    nop

    :goto_61
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    nop

    :goto_62
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_63
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_motionTarget:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_64
    if-eq v4, v5, :cond_f

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

    :cond_f
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_47

    nop

    nop

    :goto_66
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_67
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_upDuration:I

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-eq v4, v5, :cond_10

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_62

    nop

    :goto_6b
    goto/32 :goto_67

    nop

    nop

    :goto_6c
    if-eq v4, v5, :cond_11

    nop

    goto/32 :goto_6b

    nop

    :cond_11
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_6d
    if-eq v4, v5, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v6, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_13
    goto/32 :goto_60

    nop

    nop

    :goto_6f
    goto/16 :goto_62

    nop

    :goto_70
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_72
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_transitionDisable:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_73
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_setsTag:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_74
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_SharedValueId:I

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_78
    const/4 v9, -0x2

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

    :goto_79
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-eq v4, v5, :cond_14

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

    :cond_14
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7b
    iput v9, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_62

    nop

    :goto_7e
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const v1, 0x1f

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

    :goto_80
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_62

    nop

    :goto_82
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_84
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_duration:I

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

    :goto_85
    if-ne v6, v7, :cond_15

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_15
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_87
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_ifTagNotSet:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

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

    :goto_89
    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_8a
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_8b
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_8c
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_8e
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_8f
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_90
    if-eq v8, v6, :cond_16

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_16
    goto/32 :goto_11

    nop

    nop

    :goto_91
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_93
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_94
    if-eq v4, v5, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    :cond_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_96
    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_97
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget v8, v5, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

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

    :goto_9d
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_9f
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_a0
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_a1
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const v0, 0x19

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_a3
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_a4
    goto/16 :goto_23

    nop

    :goto_a5
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_a6
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition:[I

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_a7
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_pathMotionArc:I

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_motionInterpolator:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/16 :goto_62

    nop

    nop

    :goto_aa
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_ab
    if-nez v5, :cond_18

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_18
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method applyIndependentTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "motionLayout",
            "view"
        }
    .end annotation

    goto/32 :goto_13

    nop

    nop

    :goto_0
    const v1, 0x15

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    new-instance v1, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p3}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    goto/32 :goto_18

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v2, p1

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
    iget v8, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_d
    move-object v1, v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    iget v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

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

    :goto_17
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

    :goto_18
    invoke-virtual {v0, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->setBothStates(Landroid/view/View;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addAllFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    iget v9, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct/range {v1 .. v9}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object v3, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method varargs applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "layout",
            "fromId",
            "current",
            "views"
        }
    .end annotation

    goto/32 :goto_66

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
    goto/32 :goto_2a

    nop

    nop

    :goto_2
    move/from16 v2, p3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v8, v8, 0x1

    nop

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

    :goto_4
    aget-object v5, v4, v7

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7
    aget-object v13, v4, v12

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

    :goto_8
    invoke-virtual {v1, v2, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v6, v1, v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyIndependentTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    :goto_a
    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v8, v7, :cond_0

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
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_c
    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_49

    nop

    :goto_e
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v10

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5c

    nop

    :goto_11
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v14

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

    :goto_12
    if-lt v12, v11, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v8, 0x1

    nop

    goto/32 :goto_4c

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget v10, Landroidx/constraintlayout/widget/R$id;->view_transition:I

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

    :goto_17
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1d
    sget v7, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1e
    array-length v9, v5

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_36

    nop

    nop

    :goto_21
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v5, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_23
    goto :goto_2f

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    sget v7, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_26
    move-object/from16 v3, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v11, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, v7, v10}, Landroidx/constraintlayout/motion/widget/ViewTransition;->906544bc050dcb9fe53ce87dc5a6ca26m(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroid/view/View;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2a
    move-object/from16 v6, p1

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

    :goto_2b
    const/4 v8, -0x1

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

    :goto_2c
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :goto_2d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2e
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_30
    if-nez v5, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_38

    nop

    nop

    :goto_34
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_8

    nop

    nop

    :goto_36
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v10

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_5d

    nop

    :goto_39
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3a
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3b
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd(Ljava/lang/Runnable;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v8, v0, v4}, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3d
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

    :goto_3e
    if-nez v11, :cond_4

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

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v12, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_40
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_41
    array-length v8, v4

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_42
    aget v9, v5, v8

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_43
    if-lt v8, v9, :cond_5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    :goto_44
    new-instance v8, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v15, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :goto_47
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move v12, v7

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1, v7, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v15, v14, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

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

    :goto_4c
    if-eq v5, v8, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-eq v5, v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4e
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_51
    array-length v11, v4

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_52
    if-nez v15, :cond_8

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_8
    goto/32 :goto_5e

    nop

    nop

    :goto_53
    const/4 v9, 0x0

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_55
    array-length v7, v4

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

    nop

    :goto_56
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_57
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_58
    if-lt v9, v8, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_9
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    aget-object v9, v4, v8

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_33

    nop

    :goto_5d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v15, v14}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v7, v8, v9, v10, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(ILandroidx/constraintlayout/motion/widget/MotionScene;II)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_61
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v1, v7, v8, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const v1, 0x17

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

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

    :goto_65
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_66
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_67
    if-eq v9, v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    move-object/from16 v6, p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_69
    move-object/from16 v4, p5

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

    :goto_6a
    invoke-virtual {v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_6b
    aget-object v10, v4, v9

    nop

    goto/32 :goto_28

    nop

    nop
.end method

.method checkTags(Landroid/view/View;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v4, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    const v1, 0x9

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_c
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    iget v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

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

    :goto_e
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x0

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

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    :goto_16
    goto :goto_21

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_25

    nop

    :goto_19
    goto/32 :goto_20

    nop

    nop

    :goto_1a
    goto :goto_1d

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v1, v2

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1f
    const v0, 0x11

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

    :goto_20
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, -0x1

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
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_24
    if-eq v0, v1, :cond_6

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_6
    :goto_25
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_27
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method getId()I
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

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method getInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_22

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

    :pswitch_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v1

    nop

    :pswitch_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_7
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    return-object v1

    nop

    :pswitch_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/ViewTransition$1;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransition;Landroidx/constraintlayout/core/motion/utils/Easing;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

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

    :goto_12
    return-object v0

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v1, Landroidx/constraintlayout/motion/widget/ViewTransition$1;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

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

    :goto_18
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    return-object v0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_5
        :pswitch_3
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1a

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    :goto_1d
    goto/32 :goto_1c

    nop

    :goto_1e
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    return-object v0

    nop

    :pswitch_8
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_22
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getSharedValue()I
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

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getSharedValueCurrent()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public getSharedValueID()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

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

.method public getStateTransition()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

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

.method isEnabled()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    xor-int/lit8 v0, v0, 0x1

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

.method synthetic lambda$applyTransition$0$androidx-constraintlayout-motion-widget-ViewTransition([Landroid/view/View;)V
    .locals 8

    goto/32 :goto_12

    nop

    nop

    :goto_0
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x0

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
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

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
    add-int/lit8 v1, v1, 0x1

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
    if-lt v1, v0, :cond_0

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
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, -0x1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_24

    nop

    :goto_a
    array-length v0, p1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_22

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    aget-object v2, p1, v1

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
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_13
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    if-ne v0, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_15
    if-lt v3, v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    if-ne v0, v2, :cond_3

    nop

    goto/32 :goto_1

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

    :goto_18
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    aget-object v4, p1, v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v3, v1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_15

    nop

    nop

    :goto_1f
    const v1, 0xe

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

    :goto_20
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
    array-length v0, p1

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_c

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method matchesView(Landroid/view/View;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    goto/32 :goto_29

    nop

    nop

    :goto_0
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

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

    :goto_8
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

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

    :goto_9
    if-nez v4, :cond_3

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v2, :cond_4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    return v0

    nop

    :goto_f
    goto/32 :goto_28

    nop

    nop

    :goto_10
    if-eqz p1, :cond_5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    :goto_12
    return v0

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->checkTags(Landroid/view/View;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    return v3

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_27

    nop

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
    if-eqz v1, :cond_8

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_20

    nop

    nop

    :goto_1a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1c
    goto/32 :goto_26

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

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

    :goto_20
    return v0

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v3

    nop

    :goto_23
    goto/32 :goto_25

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    return v0

    nop

    nop

    :goto_26
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

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

    :goto_29
    const v0, 0x3

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

    :goto_2a
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    if-eq v1, v2, :cond_9

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1a

    nop

    nop

    :goto_2d
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2e
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method setEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    nop

    goto/32 :goto_1

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
    xor-int/lit8 v0, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method setId(I)V
    .locals 0
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
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

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
.end method

.method public setSharedValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValue"
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

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setSharedValueCurrent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValueCurrent"
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

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setSharedValueID(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValueID"
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

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setStateTransition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateTransition"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

.method supports(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    goto/32 :goto_c

    nop

    nop

    :goto_0
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v1, v2

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    :goto_7
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    return v1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    const v0, 0x9

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v0, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_11
    return v1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    return v1

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    if-eq v0, v3, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

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
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p1, v2, :cond_3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    if-eq v0, v3, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p1, :cond_5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    :goto_1e
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz p1, :cond_6

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mContext:Landroid/content/Context;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, ")"

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

    :goto_2
    goto/32 :goto_7

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    const v0, 0x12

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

    :goto_6
    return-object v0

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
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_9
    const-string v1, "ViewTransition("

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

    :goto_a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xe

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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

    :goto_12
    goto/32 :goto_3

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method
