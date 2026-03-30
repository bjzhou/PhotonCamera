.class Landroidx/constraintlayout/motion/widget/TouchResponse;
.super Ljava/lang/Object;
.source "TouchResponse.java"


# static fields
.field public static final COMPLETE_MODE_CONTINUOUS_VELOCITY:I = 0x0

.field public static final COMPLETE_MODE_SPRING:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EPSILON:F = 1.0E-7f

.field static final FLAG_DISABLE_POST_SCROLL:I = 0x1

.field static final FLAG_DISABLE_SCROLL:I = 0x2

.field static final FLAG_SUPPORT_SCROLL_UP:I = 0x4

.field private static final SEC_TO_MILLISECONDS:I = 0x3e8

.field private static final SIDE_BOTTOM:I = 0x3

.field private static final SIDE_END:I = 0x6

.field private static final SIDE_LEFT:I = 0x1

.field private static final SIDE_MIDDLE:I = 0x4

.field private static final SIDE_RIGHT:I = 0x2

.field private static final SIDE_START:I = 0x5

.field private static final SIDE_TOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TouchResponse"

.field private static final TOUCH_DIRECTION:[[F

.field private static final TOUCH_DOWN:I = 0x1

.field private static final TOUCH_END:I = 0x5

.field private static final TOUCH_LEFT:I = 0x2

.field private static final TOUCH_RIGHT:I = 0x3

.field private static final TOUCH_SIDES:[[F

.field private static final TOUCH_START:I = 0x4

.field private static final TOUCH_UP:I


# instance fields
.field private mAnchorDpDt:[F

.field private mAutoCompleteMode:I

.field private mDragScale:F

.field private mDragStarted:Z

.field private mDragThreshold:F

.field private mFlags:I

.field mIsRotateMode:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLimitBoundsTo:I

.field private mMaxAcceleration:F

.field private mMaxVelocity:F

.field private final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mMoveWhenScrollAtTop:Z

.field private mOnTouchUp:I

.field mRotateCenterX:F

.field mRotateCenterY:F

.field private mRotationCenterId:I

.field private mSpringBoundary:I

.field private mSpringDamping:F

.field private mSpringMass:F

.field private mSpringStiffness:F

.field private mSpringStopThreshold:F

.field private mTempLoc:[I

.field private mTouchAnchorId:I

.field private mTouchAnchorSide:I

.field private mTouchAnchorX:F

.field private mTouchAnchorY:F

.field private mTouchDirectionX:F

.field private mTouchDirectionY:F

.field private mTouchRegionId:I

.field private mTouchSide:I


# direct methods
.method private 92b9bd7ef3a1f70f78d179528f918e02m(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->bfe0edda8c6acb77128a3b48747c255am(Landroid/content/res/TypedArray;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe:[I

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

    :goto_3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method static constructor <clinit>()V
    .locals 9

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    new-array v2, v1, [F

    nop

    nop

    fill-array-data v2, :array_8

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    new-array v2, v1, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_a

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    new-array v2, v1, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_5

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_5
    aput-object v2, v0, v4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    aput-object v2, v0, v4

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
    aput-object v2, v0, v5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-array v2, v1, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_9

    goto/32 :goto_1a

    nop

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-array v2, v1, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_7

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-array v1, v1, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v1, :array_c

    goto/32 :goto_15

    nop

    nop

    :goto_c
    new-array v2, v1, [F

    nop

    fill-array-data v2, :array_b

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_d
    new-array v0, v8, [[F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    aput-object v2, v0, v7

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_10
    aput-object v2, v0, v3

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x7

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

    :goto_13
    aput-object v2, v0, v8

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

    :goto_14
    sput-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aput-object v1, v0, v7

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    const/4 v8, 0x6

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

    :goto_17
    goto/32 :goto_2d

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-array v2, v1, [F

    nop

    nop

    nop

    fill-array-data v2, :array_2

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1a
    aput-object v2, v0, v1

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

    :goto_1b
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    new-array v2, v1, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v5, 0x3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    new-array v0, v0, [[F

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

    :goto_1f
    sput-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

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
    aput-object v2, v0, v5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_21
    const v1, 0x20

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

    :goto_22
    const/4 v6, 0x4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v7, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_18

    nop

    nop

    :goto_26
    new-array v2, v1, [F

    nop

    fill-array-data v2, :array_4

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_27
    new-array v2, v1, [F

    nop

    nop

    fill-array-data v2, :array_6

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-array v2, v1, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_3

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    aput-object v2, v0, v1

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

    :goto_2a
    aput-object v2, v0, v6

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2b
    aput-object v2, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    aput-object v2, v0, v6

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

    :goto_2f
    new-array v2, v1, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_1

    goto/32 :goto_1b

    nop

    nop
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layout",
            "parser"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

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
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, -0x1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v2, 0x41200000    # 10.0f

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

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
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_b
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->92b9bd7ef3a1f70f78d179528f918e02m(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    const/high16 v2, 0x40800000    # 4.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterY:F

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

    :goto_10
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_12
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

    :goto_13
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

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

    :goto_14
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    const/4 v1, 0x0

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
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v2, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_1d
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1b

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

    :goto_21
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_24
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_27
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/high16 v1, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_29
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

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

    :goto_2a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

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

    :goto_2b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterX:F

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

    :goto_2f
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_30
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

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
    new-array v3, v2, [F

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

    :goto_32
    new-array v2, v2, [I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v2, 0x3f99999a    # 1.2f

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
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_36
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/motion/widget/OnSwipe;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "onSwipe"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

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

    :goto_1
    const/high16 v4, 0x41200000    # 10.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2
    aget v0, v1, v0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3
    new-array v4, v3, [F

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

    :goto_4
    const v0, 0x19

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

    :goto_5
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringDamping()F

    move-result v0

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

    :goto_6
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getDragScale()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

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

    :goto_8
    if-lt v1, v5, :cond_0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_d
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

    :goto_e
    aget v1, v1, v3

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

    :goto_f
    const/high16 v2, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    new-array v3, v3, [I

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getDragThreshold()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getNestedScrollFlags()I

    move-result v0

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getDragDirection()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterX:F

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

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
    const/high16 v2, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_1b
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

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

    nop

    :goto_1c
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getOnTouchUp()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6c

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1f
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringBoundary()I

    move-result v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_24
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

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

    :goto_25
    aget v4, v1, v0

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

    nop

    :goto_26
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getMaxVelocity()F

    move-result v0

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

    :goto_27
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_67

    nop

    nop

    :goto_29
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2a
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getAutoCompleteMode()I

    move-result v0

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

    :goto_2b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2c
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

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

    :goto_2d
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterY:F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_30
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringStopThreshold()F

    move-result v0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

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

    :goto_33
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getMoveWhenScrollAtTop()Z

    move-result v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_37
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_38
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/high16 v3, 0x40800000    # 4.0f

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

    :goto_3a
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    nop

    :goto_3b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3c
    array-length v5, v4

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

    :goto_3d
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    aget v0, v1, v3

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
    aget-object v1, v4, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_40
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_41
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getTouchAnchorSide()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_43
    if-ne v4, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_68

    nop

    nop

    :goto_44
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_45
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

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

    :goto_46
    aget-object v1, v1, v4

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

    :goto_47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_48
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_49
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getLimitBoundsTo()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4b
    const v1, 0x1c

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4c
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

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

    :goto_4d
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4e
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getTouchRegionId()I

    move-result v0

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

    :goto_50
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_51
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v2, 0x0

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

    :goto_53
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getMaxAcceleration()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_55
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_58
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_59
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

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

    :goto_5a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_5b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const v3, 0x3f99999a    # 1.2f

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5f
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

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

    :goto_60
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getRotationCenterId()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_62
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_63
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_64
    sget-object v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_66
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_67
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringMass()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_6a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_6b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_5c

    nop

    nop

    :goto_6e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getTouchAnchorId()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringStiffness()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop
.end method

.method private bfe0edda8c6acb77128a3b48747c255am(Landroid/content/res/TypedArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_1
    aget v3, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_79

    nop

    nop

    :goto_4
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_6
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_7
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragThreshold:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    array-length v7, v6

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springBoundary:I

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

    :goto_c
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_d
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_onTouchUp:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_10
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_11
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

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

    :goto_12
    if-eq v2, v3, :cond_0

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
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_13
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_79

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_95

    nop

    nop

    :goto_16
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_17
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

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
    aget v3, v3, v4

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_19
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

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

    nop

    :goto_1d
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1f
    if-eq v2, v3, :cond_1

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x6

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_24
    goto/16 :goto_79

    nop

    nop

    :goto_25
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_27
    if-lt v3, v7, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_29
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    if-eq v2, v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    :cond_3
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

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

    :goto_2f
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_31
    goto/16 :goto_79

    nop

    :goto_32
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_33
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_34
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springStopThreshold:I

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_35
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    nop

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

    :goto_36
    aget v5, v3, v5

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eq v2, v3, :cond_4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_38
    if-lt v1, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

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

    :goto_3a
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_3b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3c
    if-eq v2, v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3d
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_3e
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_41
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springStiffness:I

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_42
    aget-object v3, v6, v3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_43
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_44
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_rotationCenterId:I

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_45
    if-eq v2, v3, :cond_7

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorSide:I

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_4a
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4b
    if-eq v2, v3, :cond_8

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_4c
    if-eq v2, v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v5, 0x0

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

    :goto_4e
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-eq v2, v3, :cond_a

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

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

    :goto_51
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_moveWhenScrollAtTop:I

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_52
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_53
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragScale:I

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

    :goto_54
    if-lez v0, :cond_b

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_47

    nop

    :goto_55
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

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

    :goto_56
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

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

    :goto_5a
    aget v5, v3, v5

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchRegionId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_5e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-eq v2, v3, :cond_c

    nop

    goto/32 :goto_91

    nop

    :cond_c
    goto/32 :goto_10

    nop

    nop

    :goto_60
    goto/16 :goto_a3

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_2c

    nop

    nop

    :goto_62
    if-eq v2, v3, :cond_d

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_39

    nop

    nop

    :goto_63
    goto/16 :goto_79

    nop

    nop

    :goto_64
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-eq v2, v3, :cond_e

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

    :cond_e
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_68
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springMass:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_6b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iput v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

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

    :goto_6d
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6f
    aget-object v3, v6, v3

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_70
    if-eq v2, v3, :cond_f

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_74
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

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

    nop

    :goto_75
    goto :goto_79

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_77
    if-eq v2, v3, :cond_10

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

    :cond_10
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    nop

    nop

    :goto_79
    goto/32 :goto_2f

    nop

    nop

    :goto_7a
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_nestedScrollFlags:I

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_7b
    if-eq v2, v3, :cond_11

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7d
    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_7e
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_7f
    goto/16 :goto_79

    nop

    :goto_80
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_81
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

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

    :goto_82
    const v1, 0x4

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_83
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

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

    nop

    :goto_84
    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_86
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorId:I

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_87
    if-eq v2, v3, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_12
    goto/32 :goto_13

    nop

    nop

    :goto_88
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxVelocity:I

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8a
    goto/16 :goto_79

    nop

    :goto_8b
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_8c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_8e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_8f
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springDamping:I

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_79

    nop

    :goto_91
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_93
    if-eq v2, v3, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_95
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_autoCompleteMode:I

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_96
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_98
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9a
    if-eq v2, v3, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_79

    nop

    nop

    :goto_9c
    goto/32 :goto_44

    nop

    nop

    :goto_9d
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_limitBoundsTo:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_9e
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_9f
    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_a0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxAcceleration:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_a1
    const/high16 v3, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_a2
    const/4 v1, 0x0

    nop

    :goto_a3
    goto/32 :goto_38

    nop

    nop

    :goto_a4
    goto/16 :goto_79

    nop

    nop

    :goto_a5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_a7
    if-eq v2, v3, :cond_15

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

    :cond_15
    goto/32 :goto_2b

    nop

    nop

    :goto_a8
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_a9
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragDirection:I

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop
.end method


# virtual methods
.method dot(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
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
    mul-float/2addr v0, p1

    nop

    nop

    goto/32 :goto_9

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-float/2addr v0, v1

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
    const v1, 0x17

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    mul-float/2addr v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public getAnchorId()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

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
.end method

.method public getAutoCompleteMode()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

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
.end method

.method public getFlags()I
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

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

.method getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "rect"
        }
    .end annotation

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    const v1, 0x15

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1b

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

    nop

    nop

    :goto_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/4 v2, -0x1

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

    nop

    :goto_5
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

    nop

    :goto_6
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    int-to-float v2, v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    int-to-float v3, v3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p2

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x13

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    return-object v1

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    return-object v1

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq v0, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method getLimitBoundsToId()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

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

    nop

    nop
.end method

.method getMaxAcceleration()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

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

.method public getMaxVelocity()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method getMoveWhenScrollAtTop()Z
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
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method getProgressDirection(FF)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
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
    const v0, 0x1a

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    mul-float/2addr v2, p2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    div-float v1, v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget v2, v3, v5

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

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2e

    nop

    nop

    :goto_b
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    :goto_c
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

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

    :goto_d
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_f
    const v4, 0x33d6bf95    # 1.0E-7f

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

    :goto_10
    goto :goto_7

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1b

    nop

    nop

    :goto_12
    aget v5, v1, v3

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

    :goto_13
    mul-float/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xb

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

    :goto_15
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v3, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    :goto_17
    cmpl-float v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    aput v4, v3, v5

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    aget v6, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget v1, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    div-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

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

    :goto_20
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x0

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

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    cmpl-float v2, v6, v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_29
    aput v4, v1, v3

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    cmpl-float v2, v5, v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public getSpringBoundary()I
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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

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

.method public getSpringDamping()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

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
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getSpringMass()F
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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

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

.method public getSpringStiffness()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

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

    nop
.end method

.method public getSpringStopThreshold()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

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

.method getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "rect"
        }
    .end annotation

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    :goto_5
    return-object v1

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    const/4 v2, -0x1

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

    :goto_b
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x8

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

    :goto_d
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

    :cond_1
    goto/32 :goto_3

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

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

    :goto_11
    int-to-float v3, v3

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

    :goto_12
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    return-object v1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v2, v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v0, v2, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    :goto_1b
    int-to-float v1, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    const v0, 0x11

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method getTouchRegionId()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

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
.end method

.method isDragStarted()Z
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
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

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

.method processTouchEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "velocityTracker",
            "currentState",
            "motionScene"
        }
    .end annotation

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_1
    cmpl-float v14, v14, v15

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v14, 0x7

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

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_5
    move v14, v10

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_7
    mul-float/2addr v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    if-eqz v15, :cond_0

    nop

    goto/32 :goto_75

    nop

    :cond_0
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_a
    move v7, v5

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput v6, v5, v10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6a

    nop

    nop

    :goto_f
    iput v9, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

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

    :goto_10
    mul-float v13, v6, v10

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v8, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

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

    :goto_18
    aput v13, v12, v9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    cmpl-float v14, v7, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_1a
    mul-float/2addr v4, v6

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

    :goto_1b
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :goto_1c
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v8, :cond_1

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :cond_1
    :goto_1e
    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_1f
    move-object v15, v6

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

    :goto_20
    invoke-interface {v1, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    goto/32 :goto_e3

    nop

    nop

    :goto_21
    aput v6, v5, v9

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 v9, 0x40400000    # 3.0f

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v9, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_c1

    nop

    :goto_26
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    cmpg-float v9, v9, v11

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v10, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_29
    invoke-virtual/range {v15 .. v20}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v8, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :cond_2
    :goto_2b
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v8, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    :cond_3
    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v9, v12, v10, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_2e
    cmpl-float v14, v6, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

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

    :goto_30
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

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

    nop

    :goto_31
    div-float v6, v3, v10

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_32
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1b

    nop

    nop

    :goto_34
    cmpl-float v14, v6, v11

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_d0

    nop

    :goto_36
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_37
    float-to-double v5, v5

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_38
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_39
    aget v5, v5, v9

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

    :goto_3a
    aput v6, v5, v10

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v12, 0x7

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

    nop

    :goto_3c
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_3d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

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

    :goto_3e
    cmpl-float v11, v15, v11

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    div-float v9, v8, v9

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_40
    add-float/2addr v7, v9

    nop

    nop

    :goto_41
    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_42
    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    div-float v5, v3, v5

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_45
    mul-float/2addr v13, v12

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    cmpl-float v6, v6, v11

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

    :goto_47
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_48
    sub-float/2addr v3, v12

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_49
    if-ne v13, v6, :cond_4

    nop

    goto/32 :goto_c9

    nop

    :cond_4
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_4a
    if-eq v14, v15, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    :cond_5
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_4c
    if-ltz v9, :cond_6

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_4e
    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4f
    move/from16 v17, v14

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

    nop

    :goto_50
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_52
    iput v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_53
    const/4 v10, 0x0

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_54
    if-eq v6, v14, :cond_7

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_56
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_57
    iget v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_58
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_59
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_5a
    float-to-double v14, v7

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_ab

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    aget v9, v12, v9

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

    :goto_60
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_61
    if-eqz v9, :cond_8

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    :goto_62
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_67

    nop

    nop

    :goto_64
    goto/16 :goto_e

    nop

    nop

    :goto_65
    goto/32 :goto_112

    nop

    nop

    nop

    :goto_66
    move/from16 v16, v15

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_68
    aget v6, v5, v10

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_69
    mul-float/2addr v6, v5

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

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

    :goto_6b
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez v9, :cond_9

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

    :cond_9
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_6d
    aget v5, v5, v10

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_6e
    sub-float/2addr v12, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_70
    if-ltz v9, :cond_a

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v12

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_72
    move/from16 v18, v7

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_73
    move v14, v9

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v15, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :goto_75
    goto/32 :goto_e5

    nop

    nop

    :goto_76
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_78
    if-nez v14, :cond_b

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_b
    :goto_79
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_7a
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7b
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

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

    :goto_7c
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

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

    nop

    :goto_7d
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    div-float v5, v12, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_7f
    const v0, 0x2

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    aput v6, v5, v9

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_81
    mul-float/2addr v14, v3

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_82
    iput v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_83
    if-nez v14, :cond_c

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_84
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_85
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v14

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_87
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_88
    add-float v7, v14, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_89
    const v6, 0x3c23d70a    # 0.01f

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

    :goto_8a
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_110

    nop

    nop

    :goto_8c
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_8d
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_8e
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iput v11, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    :goto_91
    goto/32 :goto_17

    nop

    nop

    :goto_92
    goto/16 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_94
    iput v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_95
    add-float/2addr v13, v14

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_96
    move-object/from16 v0, p0

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_97
    const/high16 v10, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v4

    nop

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

    :goto_9a
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_9b
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

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

    :goto_9c
    aget v9, v9, v10

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

    :goto_9d
    move v10, v11

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    if-eq v9, v12, :cond_d

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    nop

    :goto_a0
    div-float v6, v4, v9

    nop

    nop

    :goto_a1
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    add-float/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-ne v9, v10, :cond_e

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

    :cond_e
    goto/32 :goto_5a

    nop

    nop

    :goto_a4
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const/16 v3, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_a7
    cmpg-double v5, v5, v15

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_a9
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    move v10, v8

    nop

    :goto_ab
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    if-nez v5, :cond_f

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_ae
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_af
    const/4 v12, 0x6

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v3

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

    :goto_b2
    goto/16 :goto_33

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual/range {p0 .. p4}, Landroidx/constraintlayout/motion/widget/TouchResponse;->processTouchRotateEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    mul-float/2addr v13, v6

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b5
    const/4 v11, 0x0

    nop

    nop

    packed-switch v3, :pswitch_data_0

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_b7
    cmpl-float v9, v7, v8

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

    nop

    nop

    :goto_b8
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_b9
    const/4 v15, 0x6

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

    :goto_ba
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    nop

    :goto_bb
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_bc
    cmpl-float v8, v6, v8

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

    :goto_bd
    mul-float/2addr v13, v6

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    const/4 v9, 0x1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_ce

    nop

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_c3
    const v6, 0x3f7d70a4    # 0.99f

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_c5
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_c6
    if-ltz v5, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_c8
    goto/16 :goto_f8

    nop

    nop

    :goto_c9
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_ca
    if-eqz v14, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_11b

    nop

    nop

    :goto_cd
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_cf
    div-float v9, v14, v9

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_d1
    goto/16 :goto_33

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    cmpg-float v8, v8, v5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v6

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_d4
    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

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

    :goto_d5
    if-nez v2, :cond_12

    nop

    goto/32 :goto_114

    nop

    :cond_12
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_d6
    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v8, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    :goto_d8
    goto/32 :goto_a5

    nop

    nop

    :goto_d9
    if-gtz v9, :cond_13

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_7d

    nop

    nop

    :goto_da
    if-nez v14, :cond_14

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_db
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_dc
    if-ltz v9, :cond_15

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_dd
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_de
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

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

    :goto_e0
    aget v5, v5, v9

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    if-nez v11, :cond_16

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_16

    nop

    nop

    :goto_e2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v8

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

    nop

    :goto_e4
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_e5
    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_e7
    move/from16 v19, v4

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

    :goto_e8
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_e9
    add-float/2addr v13, v14

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    aget v10, v12, v10

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_ec
    cmpl-float v9, v9, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_ed
    cmpl-float v9, v7, v11

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_ee
    if-ne v15, v6, :cond_17

    nop

    nop

    goto/32 :goto_65

    nop

    :cond_17
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_ef
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

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

    nop

    :goto_f0
    move-object/from16 v1, p2

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_f1
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

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

    nop

    :goto_f2
    mul-float/2addr v6, v4

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_f3
    move-object/from16 v20, v5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    div-float v9, v6, v9

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    neg-float v6, v9

    nop

    nop

    nop

    :goto_f6
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    aput v13, v12, v10

    nop

    :goto_f8
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_f9
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    iget-boolean v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

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

    :goto_fd
    add-float v9, v5, v6

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_ff
    if-nez v6, :cond_18

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    if-nez v9, :cond_19

    nop

    goto/32 :goto_26

    nop

    :cond_19
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    sget-object v9, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

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

    nop

    :goto_102
    iget v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_104
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    if-eq v9, v12, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_107
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    nop

    nop

    :goto_108
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_109
    if-lez v0, :cond_1b

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1b
    goto/32 :goto_3

    nop

    :goto_10a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

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

    :goto_10c
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_10d
    move-object/from16 v17, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_10e
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v14

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

    :goto_110
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_111
    cmpl-float v9, v11, v7

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_112
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_113
    return-void

    nop

    nop

    :goto_114
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_115
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_116
    mul-float/2addr v14, v9

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

    :goto_117
    iput v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_118
    if-lez v14, :cond_1c

    nop

    goto/32 :goto_79

    nop

    :cond_1c
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_119
    move v14, v7

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_11a
    const v1, 0x3

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

    :goto_11b
    const/16 v8, 0x3e8

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_11c
    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_11d
    aget v9, v10, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_11e
    if-ltz v10, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    cmpg-double v10, v14, v16

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

    :goto_120
    move/from16 v16, v6

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_121
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

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

    :goto_122
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v4

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_124
    cmpl-float v5, v5, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_125
    cmpl-float v9, v11, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_126
    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_127
    cmpg-float v8, v8, v7

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

    :goto_128
    invoke-interface {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    add-float v9, v5, v6

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method processTouchRotateEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "velocityTracker",
            "currentState",
            "motionScene"
        }
    .end annotation

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLocationOnScreen([I)V

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move/from16 v20, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_4
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    nop

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

    nop

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float v11, v11

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

    :goto_7
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-float/2addr v15, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_97

    nop

    nop

    :goto_a
    goto/32 :goto_19f

    nop

    nop

    :goto_b
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sub-float/2addr v11, v12

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_f
    float-to-double v9, v6

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

    :goto_10
    move-wide/from16 v21, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_11
    invoke-virtual {v15, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLocationOnScreen([I)V

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_12
    double-to-float v2, v2

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v5, -0x1

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_14
    int-to-float v15, v15

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

    :goto_15
    if-ltz v1, :cond_0

    nop

    goto/32 :goto_19e

    nop

    nop

    :cond_0
    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_16
    const/4 v14, 0x0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_18
    if-eqz v15, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v4, -0x1

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

    :goto_1a
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v12

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_38

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_38

    nop

    nop

    :pswitch_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v1

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_20
    move/from16 v5, v18

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    :goto_22
    const-string v15, "could not find view to animate to"

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ne v1, v15, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_115

    nop

    nop

    nop

    :goto_24
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_25
    iget v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

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

    nop

    :goto_26
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

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

    :goto_27
    mul-float/2addr v15, v14

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v15, v15, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    goto/32 :goto_183

    nop

    nop

    :goto_2a
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_2c
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

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

    :goto_2d
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_2e
    int-to-float v13, v13

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v10, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getMotionController(I)Landroidx/constraintlayout/motion/widget/MotionController;

    move-result-object v8

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    :goto_31
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_34
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_35
    div-float/2addr v12, v9

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    :goto_36
    move/from16 v19, v3

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    :goto_39
    div-float/2addr v15, v1

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

    :goto_3a
    const-wide v21, 0x4066800000000000L    # 180.0

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    :goto_3b
    float-to-double v6, v5

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_3c
    cmpg-float v1, v1, v5

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    float-to-double v14, v14

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_3f
    const/4 v3, 0x6

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v14, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_106

    nop

    nop

    :goto_41
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_42
    cmpg-float v1, v1, v4

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_44
    aput v12, v10, v11

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_c6

    nop

    nop

    :goto_46
    cmpl-float v14, v3, v10

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_47
    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_48
    div-float/2addr v15, v9

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_49
    sub-float/2addr v9, v4

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-ltz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    :cond_4
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v15, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_4c
    const/high16 v3, 0x43b40000    # 360.0f

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v14

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_4e
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_51
    div-float/2addr v15, v9

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    :goto_52
    aget v10, v10, v11

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_53
    int-to-float v10, v10

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    :goto_57
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

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

    :goto_58
    const/high16 v19, 0x40400000    # 3.0f

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_59
    invoke-virtual {v1, v3, v2, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    goto/32 :goto_d8

    nop

    nop

    :goto_5a
    if-ne v15, v4, :cond_6

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

    :cond_6
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 v15, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5c
    goto :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    nop

    :goto_5e
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-lez v14, :cond_7

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_60
    move/from16 v25, v2

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_61
    int-to-float v15, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_63
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_64
    int-to-float v6, v6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_65
    add-int v15, v15, v17

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    move-result v15

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    :goto_69
    if-nez v14, :cond_8

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    float-to-double v5, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    cmpl-float v14, v9, v14

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_6c
    add-float v3, v14, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_6d
    double-to-float v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_6e
    const/16 v4, 0x3e8

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    float-to-double v14, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_70
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

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

    :goto_72
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_74
    if-ltz v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    :cond_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_75
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v15, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLocationOnScreen([I)V

    goto/32 :goto_145

    nop

    nop

    :goto_77
    const/4 v2, 0x0

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

    :goto_78
    float-to-double v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_79
    add-float v1, v4, v15

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const/high16 v4, 0x43b40000    # 360.0f

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7b
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_7c
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    :goto_7d
    if-gtz v14, :cond_a

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    move/from16 v24, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_7f
    move/from16 v16, v3

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-eqz v14, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_a1

    nop

    nop

    :goto_81
    cmpl-float v14, v10, v4

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

    :goto_82
    div-float/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    :goto_85
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_86
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    cmpl-float v15, v5, v1

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_88
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    cmpg-float v1, v1, v3

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    move-result v11

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    :goto_8b
    const/4 v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    :goto_8c
    sub-float/2addr v9, v13

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

    :goto_8d
    move/from16 v21, v3

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

    :goto_8e
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

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

    :goto_90
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_91
    aget v6, v6, v7

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_92
    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    :goto_93
    sub-float/2addr v6, v12

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const/4 v3, 0x0

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_95
    div-float/2addr v12, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_96
    add-float v13, v6, v15

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-ltz v2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-eq v1, v3, :cond_d

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :cond_d
    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_9b
    iget v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_9c
    cmpl-float v1, v1, v4

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

    :goto_9d
    aput v3, v2, v4

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a1
    const/4 v14, 0x1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_a3
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    move v15, v1

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_109

    nop

    nop

    :goto_a6
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_a7
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a8
    if-ltz v14, :cond_e

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    add-int/2addr v12, v13

    nop

    goto/32 :goto_1bc

    nop

    nop

    :goto_aa
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_ac
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_ad
    iput v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_ae
    move-wide/from16 v25, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_af
    move-object/from16 v21, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    :goto_b1
    invoke-static {v9, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_b2
    iget v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_b3
    iget v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_130

    nop

    :goto_b5
    if-ne v14, v5, :cond_f

    nop

    goto/32 :goto_a

    nop

    :cond_f
    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_b6
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    packed-switch v3, :pswitch_data_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    move/from16 v5, v18

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_ba
    double-to-float v12, v12

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    :goto_bb
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    int-to-float v10, v10

    nop

    goto/32 :goto_1b5

    nop

    nop

    :goto_be
    add-int/2addr v11, v12

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :goto_bf
    goto/16 :goto_38

    nop

    nop

    :pswitch_1
    goto/32 :goto_77

    nop

    nop

    :goto_c0
    mul-double/2addr v2, v5

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    :goto_c1
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    const/16 v20, 0x1

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

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

    :goto_c5
    float-to-double v10, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    add-float v10, v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    if-ne v11, v10, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_c8
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_c9
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    add-float v1, v4, v15

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_cc
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    move/from16 v16, v3

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    const/high16 v14, -0x3c5b0000    # -330.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_d1
    const/high16 v13, 0x427a0000    # 62.5f

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    div-float/2addr v12, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v4

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

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

    :goto_d7
    cmpg-float v14, v9, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_d8
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_d9
    float-to-double v2, v14

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_da
    sub-double v14, v7, v5

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_db
    if-eqz v15, :cond_11

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_dc
    div-float/2addr v11, v9

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

    :goto_dd
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    :goto_de
    cmpl-float v1, v1, v3

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_e0
    sub-double v12, v10, v17

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_e2
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_e3
    sub-float/2addr v9, v13

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

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

    :goto_e5
    move/from16 v24, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    :goto_e6
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    goto/16 :goto_180

    nop

    nop

    :goto_e8
    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    float-to-double v14, v9

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_ea
    mul-float v15, v14, v19

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    :goto_eb
    invoke-virtual {v4, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    :goto_ec
    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    :goto_ed
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_ee
    float-to-double v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_ef
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_f0
    add-int v15, v15, v16

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    add-int/2addr v12, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    :goto_f3
    add-int/2addr v11, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_f4
    move-wide/from16 v21, v5

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_f6
    mul-float v14, v12, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    int-to-float v11, v11

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    :goto_f8
    aget v2, v2, v21

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v15, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    nop

    goto/32 :goto_161

    nop

    nop

    :goto_fa
    aget v8, v8, v10

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

    :goto_fb
    add-float/2addr v9, v4

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    move/from16 v24, v10

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    if-ne v8, v5, :cond_12

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

    :cond_12
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_ff
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_100
    const v1, 0x18

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

    nop

    nop

    :goto_101
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :goto_102
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_104
    move/from16 v20, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_105
    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    const-string v9, "TouchResponse"

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

    :goto_107
    const-wide v21, 0x3f847ae147ae147bL    # 0.01

    nop

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    :goto_108
    div-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_109
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    :goto_10a
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    :goto_10c
    add-int v15, v15, v16

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

    :goto_10d
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    :goto_10e
    double-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_110
    const/4 v2, 0x0

    nop

    :goto_111
    goto/32 :goto_189

    nop

    nop

    :goto_112
    add-float v13, v8, v15

    nop

    nop

    nop

    :goto_113
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_114
    move v15, v2

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_115
    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    float-to-double v3, v4

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_117
    cmpl-float v4, v10, v4

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_118
    aget v11, v11, v12

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_119
    if-eq v1, v3, :cond_13

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_11a
    div-float/2addr v6, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_11b
    sub-double/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11c
    aget v3, v3, v4

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_11d
    iput v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_11f
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_120
    iget v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_121
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_122
    float-to-double v2, v5

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_123
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_124
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_125
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_126
    sub-float/2addr v8, v13

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    :goto_127
    int-to-float v12, v12

    nop

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

    :goto_128
    sub-float/2addr v9, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_129
    move/from16 v19, v3

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v16

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

    :goto_12b
    float-to-double v5, v9

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_12c
    move/from16 v23, v9

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    sub-float/2addr v9, v12

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    div-float/2addr v13, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_12f
    goto/32 :goto_1d4

    nop

    :goto_130
    goto/32 :goto_4f

    nop

    nop

    :goto_131
    move v15, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_132
    const/4 v4, 0x0

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_133
    aget v4, v2, v3

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    const/4 v10, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_135
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_136
    goto/16 :goto_14a

    nop

    nop

    nop

    nop

    :goto_137
    goto/32 :goto_131

    nop

    nop

    nop

    :goto_138
    move v12, v5

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

    nop

    :goto_139
    float-to-double v6, v2

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_13a
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13b
    add-float v6, v11, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_13c
    mul-float v14, v15, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_13d
    cmpl-float v1, v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13e
    sub-float/2addr v9, v12

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

    :goto_13f
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

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

    :goto_140
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

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

    nop

    :goto_141
    mul-float/2addr v2, v9

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    :goto_142
    float-to-double v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_143
    goto/16 :goto_97

    nop

    nop

    nop

    :goto_144
    goto/32 :goto_4e

    nop

    nop

    :goto_145
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_146
    const-wide v21, 0x400921fb54442d18L    # Math.PI

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    :goto_147
    if-nez v15, :cond_14

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_14
    goto/32 :goto_7b

    nop

    nop

    :goto_148
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_149
    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_14b
    goto/16 :goto_5d

    nop

    nop

    nop

    :goto_14c
    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    move/from16 v18, v8

    nop

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

    :goto_14e
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v13

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_14f
    int-to-float v15, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_151
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_152
    int-to-float v8, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

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

    :goto_154
    mul-double v14, v14, v21

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_155
    add-float/2addr v5, v15

    nop

    nop

    nop

    nop

    nop

    :goto_156
    goto/32 :goto_84

    nop

    nop

    :goto_157
    aget v1, v1, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_158
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_159
    move-object/from16 v26, v3

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    move v4, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    add-float v12, v2, v8

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_15c
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_15d
    move-object/from16 v1, p2

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

    :goto_15e
    aput v12, v10, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    :goto_15f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_160
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_161
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_162
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    :goto_163
    goto/16 :goto_fc

    nop

    nop

    :goto_164
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_165
    const/16 v21, 0x1

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    add-float v7, v10, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_167
    iget v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_168
    if-eqz v4, :cond_15

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :cond_15
    :goto_169
    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    :goto_16a
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

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

    :goto_16b
    const/4 v11, 0x1

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    const/4 v3, 0x7

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

    :goto_16d
    if-ne v8, v10, :cond_16

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    if-lez v1, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    :cond_17
    :goto_16f
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_170
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto/32 :goto_1c4

    nop

    nop

    nop

    :goto_171
    move/from16 v22, v15

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    :goto_172
    invoke-virtual/range {v21 .. v26}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_173
    div-double v14, v14, v21

    nop

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    nop

    :goto_174
    int-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_175
    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_176
    add-float v12, v6, v15

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_177
    move/from16 v21, v3

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_178
    sub-float/2addr v3, v11

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    :goto_179
    const/high16 v14, 0x43a50000    # 330.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_17a
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_17c
    int-to-float v11, v11

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    div-float/2addr v15, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    :goto_17e
    iput v6, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    aput v3, v2, v4

    nop

    nop

    nop

    nop

    :goto_180
    goto/32 :goto_167

    nop

    nop

    :goto_181
    const/16 v2, 0x10

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    :goto_182
    iget v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_183
    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_184
    if-ne v8, v10, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_185
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_186
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :goto_188
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_18a
    div-float/2addr v11, v9

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    :goto_18b
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

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

    :goto_18c
    const/high16 v9, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    if-gtz v1, :cond_19

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_18e
    aget v8, v8, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    cmpl-float v14, v10, v14

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_190
    add-float v12, v8, v15

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    :goto_191
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    :goto_192
    const/4 v2, 0x0

    nop

    nop

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

    :goto_193
    const v0, 0x12

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

    nop

    :goto_194
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    nop

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    :goto_195
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_196
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    const/4 v10, -0x1

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_198
    invoke-virtual {v10, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_199
    const/high16 v12, 0x43b40000    # 360.0f

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    move/from16 v20, v2

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    :goto_19b
    double-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_19c
    add-float v7, v11, v12

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_19d
    if-lez v1, :cond_1a

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

    :cond_1a
    :goto_19e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_1a1
    invoke-virtual {v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v13

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    move/from16 v23, v9

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    div-float/2addr v15, v9

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

    :goto_1a5
    float-to-double v12, v8

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a6
    div-float/2addr v15, v2

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    goto/16 :goto_55

    nop

    nop

    nop

    :goto_1a8
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    invoke-virtual {v14, v15}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    goto/32 :goto_16b

    nop

    nop

    :goto_1ad
    goto/16 :goto_38

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_135

    nop

    nop

    nop

    :goto_1ae
    invoke-virtual {v15, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :goto_1af
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

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

    :goto_1b1
    const/4 v10, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    :goto_1b3
    iget-boolean v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1b4
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_1b5
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_1b7
    move v15, v1

    nop

    nop

    nop

    nop

    :goto_1b8
    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v17

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    :goto_1bb
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1bc
    int-to-float v12, v12

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

    :goto_1bd
    if-nez v14, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_1be
    add-float v6, v10, v11

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

    :goto_1bf
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    aget v12, v10, v11

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    :goto_1c1
    float-to-double v9, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_1c2
    cmpg-double v2, v2, v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_1c3
    cmpl-float v15, v5, v1

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_1c6
    move-wide/from16 v25, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    neg-float v1, v1

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_1c8
    int-to-float v12, v12

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    div-double/2addr v2, v6

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

    :goto_1ca
    if-nez v14, :cond_1c

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_1c
    :goto_1cb
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    :goto_1cd
    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_1ce
    move/from16 v6, v20

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1cf
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_1d0
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v17

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1d1
    float-to-double v10, v10

    nop

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

    :goto_1d2
    aget v11, v11, v12

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d3
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_1d4
    goto/32 :goto_b4

    nop

    nop

    :goto_1d5
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_1d6
    invoke-virtual {v14, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getMotionController(I)Landroidx/constraintlayout/motion/widget/MotionController;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_1d7
    aget v6, v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_1d8
    if-lez v0, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_12f

    nop

    :goto_1d9
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_1da
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_1db
    sub-float/2addr v8, v6

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    :goto_1dc
    float-to-double v12, v12

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

    nop

    :goto_1dd
    int-to-float v15, v15

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    :goto_1de
    cmpl-double v14, v14, v21

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_1df
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLocationOnScreen([I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e0
    double-to-float v9, v14

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    :goto_1e1
    int-to-float v11, v11

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

    :goto_1e2
    aget v10, v10, v11

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    move/from16 v23, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_1e4
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v16

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method scrollMove(FF)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2
    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    float-to-double v5, v3

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

    :goto_4
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_5
    if-nez v6, :cond_0

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    :goto_6
    add-float/2addr v2, v5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v4, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-float/2addr v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    const v5, 0x3c23d70a    # 0.01f

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

    :goto_a
    const/high16 v6, 0x3f800000    # 1.0f

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

    :goto_b
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    aget v5, v3, v4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

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
    const/4 v5, 0x0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_12
    aput v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

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

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x16

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

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

    :goto_17
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    cmpg-double v3, v5, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_36

    nop

    nop

    :goto_1b
    mul-float/2addr v2, v5

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1c
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    if-nez v4, :cond_1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1e
    iput-boolean v8, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1f
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

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

    :goto_20
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    aget v4, v6, v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_23
    div-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_24
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_25
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

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

    nop

    :goto_26
    mul-float/2addr v1, p2

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
    move v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v3, p1

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

    :goto_29
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2a
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_2b
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_41

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2f
    mul-float/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_33
    aput v5, v3, v8

    nop

    :goto_34
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_36
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

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

    :goto_37
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_38
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_39
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto/32 :goto_20

    nop

    nop

    :goto_3a
    mul-float/2addr v3, p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-ltz v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v4

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3d
    cmpl-float v4, v1, v4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-float v4, v1, v3

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

    :goto_3f
    cmpl-float v6, v3, v5

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

    :goto_40
    div-float/2addr v3, v4

    nop

    nop

    :goto_41
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_43
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_4b

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_45
    aget v4, v4, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_46
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_47
    invoke-virtual {v4, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :goto_48
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_49
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    :goto_4a
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :goto_4b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    aget v3, v3, v8

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method scrollUp(FF)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    cmpl-float v3, v1, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3
    mul-float/2addr v6, p2

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    cmpg-double v4, v9, v11

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

    :goto_6
    const/4 v8, 0x0

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

    :goto_7
    add-float/2addr v5, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne v6, v9, :cond_1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_a
    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v6, v8, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    :goto_e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    mul-float v8, v6, v3

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

    :goto_12
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_13
    move v4, v0

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    add-float/2addr v1, v3

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_18
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    :goto_19
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_26

    nop

    :goto_1a
    move v4, v7

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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
    div-float v3, v2, v3

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
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

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

    :goto_1e
    mul-float/2addr v2, p1

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

    :goto_1f
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_20
    goto/16 :goto_14

    nop

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move v8, v3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_25
    float-to-double v9, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_25

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
    goto/32 :goto_32

    nop

    nop

    :goto_2b
    const v1, 0x13

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

    :goto_2c
    aget v3, v3, v7

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

    :goto_2d
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2e
    and-int/2addr v0, v4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2f
    const/high16 v3, 0x40400000    # 3.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_30
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_23

    nop

    nop

    :goto_34
    goto/32 :goto_22

    nop

    nop

    :goto_35
    if-eqz v3, :cond_4

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

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    div-float/2addr v2, v4

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

    :goto_37
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v7, 0x1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v0, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3b
    cmpl-float v4, v1, v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3c
    cmpl-float v9, v2, v8

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_44

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move v0, v7

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    aget v4, v3, v0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_43
    div-float v2, v6, v3

    nop

    nop

    :goto_44
    goto/32 :goto_18

    nop

    nop

    :goto_45
    move v4, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_46
    if-ltz v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_6
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_47
    if-nez v9, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

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

    :goto_49
    mul-float v5, v2, v4

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop
.end method

.method public setAnchorId(I)V
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

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method setAutoCompleteMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoCompleteMode"
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

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method setDown(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lastTouchX",
            "lastTouchY"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setMaxAcceleration(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acceleration"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

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

.method public setMaxVelocity(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocity"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setRTL(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtl"
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
    aput-object v2, v1, v0

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

    :goto_1
    aget-object v7, v6, v5

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget-object v2, v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

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

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    aget-object v2, v1, v3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v2, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

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

    :goto_9
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

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

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_28

    nop

    nop

    :goto_c
    aget-object v0, v0, v1

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

    :goto_d
    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aput-object v2, v1, v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v4, 0x5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_13
    aput-object v1, v6, v4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_14
    const v1, 0x1b

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

    :goto_15
    if-ge v0, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

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

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_17
    aput-object v1, v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    aput-object v1, v6, v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aget-object v2, v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    array-length v4, v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1c
    const/4 v0, 0x6

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

    :goto_1d
    aget v0, v0, v3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_20
    const/4 v1, 0x3

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    const/4 v1, 0x0

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

    :goto_22
    aget-object v2, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_23
    aget-object v1, v6, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aget v1, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aget-object v0, v2, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_26
    const v0, 0x9

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aget-object v1, v6, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_28
    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_29
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2a
    goto :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v5, 0x2

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

    :goto_2d
    aput-object v2, v1, v0

    nop

    nop

    :goto_2e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aget v0, v0, v3

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

    :goto_30
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    aget v2, v0, v1

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

    :goto_32
    return-void

    nop

    :goto_33
    goto/32 :goto_36

    nop

    nop

    :goto_34
    aput-object v7, v6, v2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_35
    aget-object v1, v6, v5

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

    :goto_36
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_38
    aput-object v2, v1, v4

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

    :goto_39
    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop
.end method

.method public setTouchAnchorLocation(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
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
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

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
    return-void

    nop

    nop
.end method

.method public setTouchUpMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchUpMode"
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

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method setUpTouchEvent(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lastTouchX",
            "lastTouchY"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

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

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method setupTouch()V
    .locals 4

    goto/32 :goto_21

    nop

    nop

    :goto_0
    if-ne v1, v2, :cond_0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$1;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v2, Landroidx/constraintlayout/motion/widget/TouchResponse$1;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    :goto_9
    const v1, 0x1e

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$2;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    goto/32 :goto_3

    nop

    nop

    :goto_c
    const/4 v0, 0x0

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

    :goto_d
    invoke-static {v2, v3}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

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

    nop

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    :goto_10
    const/4 v2, -0x1

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

    :goto_11
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    :goto_15
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_5

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    const-string v2, "TouchResponse"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_19
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v2, "cannot find TouchAnchorId @id/"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v2, Landroidx/constraintlayout/motion/widget/TouchResponse$2;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

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

    :goto_21
    const v0, 0x5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_26
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

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

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_8

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const-string v0, "rotation"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
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

    :goto_10
    const-string v1, " , "

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
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

    nop

    :goto_14
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x17

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

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_4

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop
.end method
