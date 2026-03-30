.class public Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyPosition.java"


# static fields
.field static final KEY_TYPE:I = 0x2

.field static final NAME:Ljava/lang/String; = "KeyPosition"

.field protected static final SELECTION_SLOPE:F = 20.0f

.field public static final TYPE_CARTESIAN:I = 0x0

.field public static final TYPE_PATH:I = 0x1

.field public static final TYPE_SCREEN:I = 0x2


# instance fields
.field public mAltPercentX:F

.field public mAltPercentY:F

.field private mCalculatedPositionX:F

.field private mCalculatedPositionY:F

.field public mCurveFit:I

.field public mDrawPath:I

.field public mPathMotionArc:I

.field public mPercentHeight:F

.field public mPercentWidth:F

.field public mPercentX:F

.field public mPercentY:F

.field public mPositionType:I

.field public mTransitionEasing:Ljava/lang/String;


# direct methods
.method private 1a3a406245977cff33bea71e0fcba270m(FFFF)V
    .locals 8

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-float v0, p3, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    mul-float/2addr v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    add-float/2addr v4, v6

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

    :goto_4
    sub-float v1, p4, p2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    iput v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    mul-float v7, v2, v6

    nop

    goto/32 :goto_16

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_9
    add-float/2addr v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    iput v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    :goto_c
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

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
    neg-float v2, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    mul-float/2addr v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    mul-float v5, v0, v4

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

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr v5, v7

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

    :goto_17
    move v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    add-float/2addr v4, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 8fe037e2d95baeb1e12de2ccff998507m(FFFF)V
    .locals 8

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_0
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

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

    :goto_2
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5
    mul-float v6, v0, v2

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    goto/16 :goto_36

    nop

    :goto_7
    goto/32 :goto_35

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_9
    add-float/2addr v6, p2

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

    :goto_a
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    add-float/2addr v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_c
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

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

    :goto_d
    goto/16 :goto_21

    nop

    :goto_e
    goto/32 :goto_20

    nop

    nop

    :goto_f
    sub-float v0, p3, p1

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

    :goto_10
    if-nez v6, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v5, v3

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

    :goto_13
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    goto/32 :goto_11

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

    :goto_15
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    int-to-float v6, v6

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-float/2addr v6, p1

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
    mul-float v7, v1, v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    :goto_1b
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_1d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    float-to-int v6, v6

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    mul-float v6, v0, v4

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

    :goto_20
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop

    :goto_22
    float-to-int v6, v6

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move v2, v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v4, v3

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

    :goto_28
    mul-float v7, v1, v5

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v5, :cond_3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2b
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    :goto_2c
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    :goto_2e
    iput v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2f
    add-float/2addr v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_30
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_2d

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_33
    sub-float v1, p4, p2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_34
    const v0, 0x9

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    :goto_0
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    nop

    goto/32 :goto_17

    nop

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

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_2
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

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

    :goto_3
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mType:I

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

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

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

    :goto_a
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->UNSET:I

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->UNSET:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

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
    const v0, 0x11

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

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
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

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

    :goto_18
    const/4 v0, 0x0

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

    :goto_19
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

    :goto_1a
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    const/high16 v1, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1d
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

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

.method private a6517d43b8127c077902e004974d7da7m(II)V
    .locals 5

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    add-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    const v1, 0x1a

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

    :goto_4
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

    :goto_5
    int-to-float v3, v3

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

    :goto_6
    add-float/2addr v2, v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
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

    :goto_8
    div-int/lit8 v4, v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
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

    :goto_a
    iput v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    int-to-float v4, v4

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
    int-to-float v2, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    mul-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    int-to-float v2, v2

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
    sub-int v2, p2, v1

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
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_16
    sub-int v2, p1, v0

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

    :goto_17
    div-int/lit8 v3, v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    iput v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

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

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x13

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

    nop
.end method

.method calcPosition(IIFFFF)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->8fe037e2d95baeb1e12de2ccff998507m(FFFF)V

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

    :pswitch_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->1a3a406245977cff33bea71e0fcba270m(FFFF)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->a6517d43b8127c077902e004974d7da7m(II)V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object v0

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
    return-object v0

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;-><init>()V

    goto/32 :goto_1

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

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

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    nop

    goto/32 :goto_5

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

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1b

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

    :goto_a
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
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

    nop

    nop

    :goto_d
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

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

    :goto_12
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

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

    :goto_13
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

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

    :goto_19
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    const/high16 v1, 0x7fc00000    # Float.NaN

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

    :goto_1c
    goto/32 :goto_8

    nop

    :goto_1d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

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

    :goto_1f
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_20
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    move-object v0, p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

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

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public getId(Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;->getId(Ljava/lang/String;)I

    move-result v0

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

.method getPositionX()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

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

    nop

    nop

    nop

    nop
.end method

.method getPositionY()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

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

.method public intersects(IILandroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF)Z
    .locals 7

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->calcPosition(IIFFFF)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result v4

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

    :goto_9
    const/4 v0, 0x1

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

    :goto_a
    move v2, p2

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

    :goto_b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ltz v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
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

    :goto_12
    const/high16 v1, 0x41a00000    # 20.0f

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p4}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_17
    const v1, 0x4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    :goto_1a
    invoke-virtual {p4}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result v6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    sub-float v0, p6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    move v1, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    cmpg-float v0, v0, v1

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
    sub-float v0, p5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    if-ltz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public positionAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v6, p7

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x14

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

    :goto_2
    move-object v2, p3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    const v1, 0xe

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

    :goto_5
    if-lez v0, :cond_0

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual/range {p0 .. p7}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionScreenAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    move v3, p4

    nop

    nop

    nop

    goto/32 :goto_1b

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

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionCartAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    move-object v0, p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    move-object v6, p7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    move-object v0, p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    move v4, p5

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionPathAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :pswitch_1
    goto/32 :goto_d

    nop

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

    nop

    :goto_12
    move-object v1, p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object v5, p6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    move-object v2, p3

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

    :goto_17
    move-object v5, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    move-object v1, p2

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    move v3, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    move v4, p5

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

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method positionCartAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .locals 10

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v7, :cond_0

    nop

    goto/32 :goto_30

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

    :goto_1
    aput v7, p6, v6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3
    div-float/2addr v7, v4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    const-string v8, "percentX"

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

    :goto_5
    const/4 v6, 0x0

    nop

    goto/32 :goto_25

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

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_2d

    nop

    :goto_9
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

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

    :goto_b
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    sub-float v5, v3, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    sub-float v7, p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    div-float/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    aput v6, p6, v9

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

    :goto_11
    sub-float v7, p3, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_31

    nop

    nop

    :goto_14
    const-string v6, "percentY"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_15
    sub-float v6, p4, v1

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

    :goto_16
    div-float/2addr v7, v4

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
    aput v7, p6, v9

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1b
    sub-float v6, p4, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sub-float v7, p4, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    div-float/2addr v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1e
    if-nez v7, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aput v7, p6, v6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_21
    div-float/2addr v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_23
    aput-object v6, p5, v9

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    aget-object v7, p5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_25
    aget-object v7, p5, v6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_26
    div-float/2addr v6, v5

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

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_28
    aput v7, p6, v6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_29
    sub-float v7, p3, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2a
    aput-object v8, p5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2b
    sub-float v4, v2, v0

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

    :goto_2c
    aput v6, p6, v9

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_12

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result v3

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

    :goto_2f
    goto :goto_2d

    nop

    :goto_30
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method positionPathAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .locals 15

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aput v12, p6, v9

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3
    div-float/2addr v12, v6

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result v3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    aput-object v13, p5, v8

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v13, :cond_0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    div-float/2addr v11, v6

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

    :goto_d
    add-float/2addr v12, v13

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    const/4 v8, 0x1

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

    :goto_f
    sub-float v12, p3, v0

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

    :goto_10
    float-to-double v8, v5

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    sub-float v4, v2, v0

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

    :goto_12
    div-float v7, v4, v6

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_13
    aget-object v13, p5, v9

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

    :goto_14
    aput v11, p6, v8

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
    sub-float v11, p4, v1

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
    float-to-double v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    mul-float/2addr v12, v7

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v13, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    sub-float/2addr v11, v12

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

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    :goto_1e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1f
    aput v7, p6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    const-string v14, "percentX"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aput v12, p6, v9

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_25
    mul-float/2addr v11, v7

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
    if-ltz v7, :cond_2

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_27
    aput v7, p6, v9

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v12, v10

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

    :goto_29
    const-string v10, "distance ~ 0"

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aput v11, p6, v8

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    div-float v10, v5, v6

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sub-float v13, p4, v1

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

    :goto_2d
    cmpg-double v7, v7, v9

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v13, "percentY"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    mul-float/2addr v13, v10

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_32
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_33
    float-to-double v7, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_36
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

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

    :goto_37
    aput-object v14, p5, v9

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_38
    sub-float v5, v3, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    :goto_3a
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    aget-object v13, p5, v9

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

    :goto_3d
    double-to-float v6, v6

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3e
    sub-float v12, p3, v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3f
    const-wide v9, 0x3f1a36e2eb1c432dL    # 1.0E-4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop
.end method

.method positionScreenAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .locals 13

    goto/32 :goto_8

    nop

    nop

    :goto_0
    aput v10, p7, v12

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

    :goto_1
    invoke-virtual {v6}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    aput v10, p7, v9

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3
    int-to-float v10, v7

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5
    div-float v10, p4, v10

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    sub-float v5, v3, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x8

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_9
    int-to-float v10, v7

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

    :goto_a
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getParent()Landroidx/constraintlayout/core/motion/MotionWidget;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    const-string v9, "percentY"

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_11
    div-float v10, p5, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    aput v10, p7, v9

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aget-object v10, p6, v9

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

    :goto_14
    div-float v10, p4, v10

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v10, :cond_1

    nop

    nop

    goto/32 :goto_b

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

    :goto_16
    int-to-float v10, v8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v6}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    const/4 v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_19
    div-float v9, p5, v9

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1a
    int-to-float v9, v8

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    int-to-float v10, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1c
    aput v10, p7, v9

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

    :goto_1d
    goto/32 :goto_25

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1f
    sub-float v4, v2, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aput-object v9, p6, v12

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

    :goto_21
    div-float v9, p5, v9

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

    :goto_22
    invoke-virtual/range {p3 .. p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v2

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

    :goto_23
    const v1, 0x2

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

    :goto_24
    goto/32 :goto_28

    nop

    nop

    :goto_25
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    aget-object v10, p6, v9

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

    :goto_27
    return-void

    nop

    nop

    :goto_28
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    aput v9, p7, v12

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

    :goto_2a
    aput v9, p7, v12

    nop

    nop

    :goto_2b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-float v9, v8

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2d
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2e
    invoke-virtual/range {p3 .. p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result v3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aput-object v11, p6, v9

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
    goto :goto_2b

    nop

    nop

    :goto_31
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_32
    div-float v10, p4, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_33
    const-string v11, "percentX"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v10, :cond_2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setValue(IF)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto :goto_6

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto :goto_6

    nop

    :pswitch_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1f7
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :goto_4
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

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
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

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

    :goto_a
    return v0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_c

    nop

    nop

    :goto_b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

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

    :goto_e
    const/4 v0, 0x1

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
.end method

.method public setValue(II)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

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

    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_7

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    goto :goto_7

    nop

    nop

    :sswitch_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mFramePosition:I

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    nop

    goto/32 :goto_4

    nop

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

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x1fc -> :sswitch_1
        0x1fe -> :sswitch_0
    .end sparse-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

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

    :goto_2
    return v0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
    .end packed-switch

    :goto_3
    return v0

    nop

    nop

    :pswitch_0
    goto/32 :goto_5

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
