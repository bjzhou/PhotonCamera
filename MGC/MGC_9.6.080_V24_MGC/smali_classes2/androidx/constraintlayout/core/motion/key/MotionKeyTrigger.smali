.class public Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyTrigger.java"


# static fields
.field public static final CROSS:Ljava/lang/String; = "CROSS"

.field public static final KEY_TYPE:I = 0x5

.field public static final NEGATIVE_CROSS:Ljava/lang/String; = "negativeCross"

.field public static final POSITIVE_CROSS:Ljava/lang/String; = "positiveCross"

.field public static final POST_LAYOUT:Ljava/lang/String; = "postLayout"

.field private static final TAG:Ljava/lang/String; = "KeyTrigger"

.field public static final TRIGGER_COLLISION_ID:Ljava/lang/String; = "triggerCollisionId"

.field public static final TRIGGER_COLLISION_VIEW:Ljava/lang/String; = "triggerCollisionView"

.field public static final TRIGGER_ID:Ljava/lang/String; = "triggerID"

.field public static final TRIGGER_RECEIVER:Ljava/lang/String; = "triggerReceiver"

.field public static final TRIGGER_SLACK:Ljava/lang/String; = "triggerSlack"

.field public static final TYPE_CROSS:I = 0x138

.field public static final TYPE_NEGATIVE_CROSS:I = 0x136

.field public static final TYPE_POSITIVE_CROSS:I = 0x135

.field public static final TYPE_POST_LAYOUT:I = 0x130

.field public static final TYPE_TRIGGER_COLLISION_ID:I = 0x133

.field public static final TYPE_TRIGGER_COLLISION_VIEW:I = 0x132

.field public static final TYPE_TRIGGER_ID:I = 0x134

.field public static final TYPE_TRIGGER_RECEIVER:I = 0x137

.field public static final TYPE_TRIGGER_SLACK:I = 0x131

.field public static final TYPE_VIEW_TRANSITION_ON_CROSS:I = 0x12d

.field public static final TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS:I = 0x12f

.field public static final TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS:I = 0x12e

.field public static final VIEW_TRANSITION_ON_CROSS:Ljava/lang/String; = "viewTransitionOnCross"

.field public static final VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String; = "viewTransitionOnNegativeCross"

.field public static final VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String; = "viewTransitionOnPositiveCross"


# instance fields
.field mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

.field private mCross:Ljava/lang/String;

.field private mCurveFit:I

.field private mFireCrossReset:Z

.field private mFireLastPos:F

.field private mFireNegativeReset:Z

.field private mFirePositiveReset:Z

.field private mFireThreshold:F

.field private mNegativeCross:Ljava/lang/String;

.field private mPositiveCross:Ljava/lang/String;

.field private mPostLayout:Z

.field mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

.field private mTriggerCollisionId:I

.field private mTriggerID:I

.field private mTriggerReceiver:I

.field mTriggerSlack:F

.field mViewTransitionOnCross:I

.field mViewTransitionOnNegativeCross:I

.field mViewTransitionOnPositiveCross:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    const v0, 0x3dcccccd    # 0.1f

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

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

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

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
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    sget v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnNegativeCross:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnPositiveCross:I

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

    :goto_c
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

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

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_13
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

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

    :goto_15
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mType:I

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

    :goto_1f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnCross:I

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
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCustom:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    const/high16 v0, 0x7fc00000    # Float.NaN

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

    :goto_23
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_25
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

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

    :goto_26
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

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

    :goto_27
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_28
    const v0, 0xe

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_29
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

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

    :goto_2a
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

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

    :goto_2b
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

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

    :goto_2c
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2e
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2f
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

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

    :goto_30
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_31
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method private a796e149acfae747d4dc45f145d90bddm(Ljava/lang/String;Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 5

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
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

    :goto_4
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCustom:Ljava/util/HashMap;

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

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

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

    :goto_9
    goto/16 :goto_26

    nop

    :goto_a
    goto/32 :goto_25

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_18

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

    :goto_11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v4, :cond_2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCustom:Ljava/util/HashMap;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_17
    if-nez v4, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_3
    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_12

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

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

    :goto_1d
    invoke-virtual {v4, p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->applyToWidget(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    :goto_1e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    :goto_20
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    check-cast v2, Ljava/lang/String;

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

    :goto_28
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    :goto_29
    const v0, 0x1

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

    :goto_2a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v4, Landroidx/constraintlayout/core/motion/CustomVariable;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2c
    if-eq v0, v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

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
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

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
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public conditionallyFire(FLandroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 0

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

.method public bridge synthetic copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    move-result-object p1

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

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;
    .locals 2

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

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

    :goto_5
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_d
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireLastPos:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

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
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

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

    :goto_16
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

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

    :goto_17
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

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

    :goto_1c
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

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

    :goto_22
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_23
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_25
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireLastPos:F

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

    :goto_26
    const v0, 0xf

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_20

    nop

    nop

    :goto_29
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2b
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2c
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public getId(Ljava/lang/String;)I
    .locals 2

    goto/32 :goto_25

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

    :pswitch_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "viewTransitionOnPositiveCross"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    const-string v0, "viewTransitionOnNegativeCross"

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2b

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

    :goto_6
    const/16 v0, 0x130

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "viewTransitionOnCross"

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    const-string v0, "triggerCollisionId"

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0x133

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    const/16 v0, 0x136

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

    :goto_f
    const/16 v0, 0x12f

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

    nop

    :goto_10
    return v0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_12
    const/4 v0, 0x2

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

    :goto_13
    const/16 v0, 0x134

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

    :goto_14
    return v0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_3a

    nop

    nop

    :sswitch_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_3a

    nop

    nop

    :goto_1a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_50

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "triggerReceiver"

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

    :goto_20
    return v0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_4f

    nop

    nop

    :goto_22
    const/4 v0, 0x5

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

    :goto_23
    goto/16 :goto_3a

    nop

    nop

    :sswitch_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_26
    const/16 v0, 0x132

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

    :goto_27
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_29
    const/16 v0, 0x12e

    nop

    nop

    goto/32 :goto_33

    nop

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

    :sswitch_data_0
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_a
        -0x399a6b12 -> :sswitch_2
        -0x2ee3a4eb -> :sswitch_0
        -0x26ab2f2d -> :sswitch_3
        -0x26090af5 -> :sswitch_5
        -0x4880de1 -> :sswitch_7
        -0x94d7ce -> :sswitch_8
        0x15b9acb8 -> :sswitch_9
        0x4d99e267 -> :sswitch_6
        0x538787ea -> :sswitch_1
        0x5b846bc7 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_a
        :pswitch_8
    .end packed-switch

    :goto_2b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v0, 0x0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x19

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v0, 0x131

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
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_31
    const-string v0, "positiveCross"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_32
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_33
    return v0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v0, "triggerCollisionView"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_35
    const-string v0, "triggerSlack"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_36
    const/4 v1, -0x1

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_37
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto :goto_3a

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move v0, v1

    nop

    :goto_3a
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_1a

    nop

    nop

    :sswitch_4
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_37

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

    nop

    :goto_3d
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3e
    goto :goto_3a

    nop

    nop

    :sswitch_5
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_40
    const/16 v0, 0x12d

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

    :goto_41
    const/16 v0, 0x135

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_42
    const-string v0, "negativeCross"

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_43
    if-nez v0, :cond_6

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

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    nop

    :goto_45
    const-string v0, "triggerID"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_48
    return v0

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return v0

    nop

    nop

    :pswitch_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/16 v0, 0x137

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v0, 0x7

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4d
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_8
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_3a

    nop

    nop

    :sswitch_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4f
    const-string v0, "postLayout"

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_51
    if-nez v0, :cond_9

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v0, :cond_a

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_3a

    nop

    :sswitch_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :sswitch_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :sswitch_9
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/16 v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_3a

    nop

    :sswitch_a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_22

    nop

    nop

    :goto_5a
    return v1

    nop

    nop

    :pswitch_8
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_5b
    return v0

    nop

    :pswitch_9
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_5d
    return v0

    nop

    :pswitch_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public setValue(IF)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

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

    nop

    :pswitch_data_0
    .packed-switch 0x131
        :pswitch_0
    .end packed-switch

    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

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
    return v0

    nop

    :pswitch_0
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public setValue(II)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/32 :goto_e

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

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :goto_1
    goto :goto_9

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto :goto_9

    nop

    nop

    :pswitch_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnPositiveCross:I

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
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_b

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnNegativeCross:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnCross:I

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
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

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
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

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

    :goto_c
    goto :goto_9

    nop

    :pswitch_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    goto :goto_9

    nop

    :pswitch_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

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
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

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
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x135
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :goto_6
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    goto :goto_1

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public setValue(IZ)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IZ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x130
        :pswitch_0
    .end packed-switch

    :goto_3
    return v0

    nop

    nop

    :pswitch_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

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
