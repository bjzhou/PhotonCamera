.class public Landroidx/constraintlayout/motion/widget/KeyPosition;
.super Landroidx/constraintlayout/motion/widget/KeyPositionBase;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;
    }
.end annotation


# static fields
.field public static final DRAWPATH:Ljava/lang/String; = "drawPath"

.field static final KEY_TYPE:I = 0x2

.field static final NAME:Ljava/lang/String; = "KeyPosition"

.field public static final PERCENT_HEIGHT:Ljava/lang/String; = "percentHeight"

.field public static final PERCENT_WIDTH:Ljava/lang/String; = "percentWidth"

.field public static final PERCENT_X:Ljava/lang/String; = "percentX"

.field public static final PERCENT_Y:Ljava/lang/String; = "percentY"

.field public static final SIZE_PERCENT:Ljava/lang/String; = "sizePercent"

.field private static final TAG:Ljava/lang/String; = "KeyPosition"

.field public static final TRANSITION_EASING:Ljava/lang/String; = "transitionEasing"

.field public static final TYPE_CARTESIAN:I = 0x0

.field public static final TYPE_PATH:I = 0x1

.field public static final TYPE_SCREEN:I = 0x2


# instance fields
.field mAltPercentX:F

.field mAltPercentY:F

.field private mCalculatedPositionX:F

.field private mCalculatedPositionY:F

.field mDrawPath:I

.field mPathMotionArc:I

.field mPercentHeight:F

.field mPercentWidth:F

.field mPercentX:F

.field mPercentY:F

.field mPositionType:I

.field mTransitionEasing:Ljava/lang/String;


# direct methods
.method private 1a3a406245977cff33bea71e0fcba270m(FFFF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start_x",
            "start_y",
            "end_x",
            "end_y"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v5, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    add-float/2addr v5, p1

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

    :goto_3
    mul-float v5, v0, v4

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

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    add-float/2addr v4, v6

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_7
    goto/32 :goto_16

    nop

    :goto_8
    mul-float/2addr v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    sub-float v0, p3, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    neg-float v2, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x15

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    move v3, v0

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

    :goto_12
    add-float/2addr v4, p2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-float/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    sub-float v1, p4, p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    mul-float v7, v2, v6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    mul-float/2addr v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    iput v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method private 8fe037e2d95baeb1e12de2ccff998507m(FFFF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start_x",
            "start_y",
            "end_x",
            "end_y"
        }
    .end annotation

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_10

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

    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/16 :goto_35

    nop

    nop

    :goto_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_6
    goto :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_7

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

    :goto_9
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    :goto_a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

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

    :goto_c
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

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

    :goto_d
    sub-float v0, p3, p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    add-float/2addr v6, p1

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

    :goto_f
    sub-float v1, p4, p2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1e

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    float-to-int v6, v6

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    move v5, v3

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
    add-float/2addr v6, p2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    float-to-int v6, v6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x18

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

    :goto_1d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    mul-float v6, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    iput v6, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    int-to-float v6, v6

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

    :goto_22
    move v4, v3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v6, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-float/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    int-to-float v6, v6

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

    :goto_27
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-float/2addr v6, v7

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

    :goto_2a
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    :goto_2c
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2d
    mul-float v7, v1, v5

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

    :goto_2e
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2f
    mul-float v6, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_30
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    nop

    nop

    :goto_31
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto :goto_31

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_34
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    nop

    nop

    :goto_35
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

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

    :goto_37
    move v2, v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_38
    mul-float v7, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_39
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    goto/32 :goto_1b

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
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
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

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

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

    :goto_c
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    sget v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->UNSET:I

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
    const/4 v0, 0x0

    nop

    goto/32 :goto_14

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mType:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

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

    :goto_17
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    const v1, 0x18

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    :goto_1c
    const/high16 v1, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method private a6517d43b8127c077902e004974d7da7m(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutWidth",
            "layoutHeight"
        }
    .end annotation

    goto/32 :goto_b

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

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-float/2addr v2, v3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    const v1, 0x4

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

    :goto_9
    div-int/lit8 v4, v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    div-int/lit8 v3, v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_12
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    mul-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    sub-int v2, p2, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sub-int v2, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    mul-float/2addr v2, v3

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

    :goto_18
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    add-float/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-float v2, v2

    nop

    goto/32 :goto_f

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method calcPosition(IIFFFF)V
    .locals 1
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
            "layoutWidth",
            "layoutHeight",
            "start_x",
            "start_y",
            "end_x",
            "end_y"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-void

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

    :goto_1
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

    :goto_2
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->8fe037e2d95baeb1e12de2ccff998507m(FFFF)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->a6517d43b8127c077902e004974d7da7m(II)V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    :pswitch_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->1a3a406245977cff33bea71e0fcba270m(FFFF)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
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

    nop

    :goto_1
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyPosition;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyPosition;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

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

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyPosition;->clone()Landroidx/constraintlayout/motion/widget/Key;

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

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    move-object v0, p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

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

    :goto_a
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

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

    :goto_14
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

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
    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyPosition;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    const/high16 v1, 0x7fc00000    # Float.NaN

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

    :goto_18
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

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

    :goto_1a
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

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

    :goto_21
    goto/32 :goto_8

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method getPositionX()F
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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method getPositionY()F
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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

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

.method public intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
    .locals 7
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
            "layoutWidth",
            "layoutHeight",
            "start",
            "end",
            "x",
            "y"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-float v0, p6, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move v1, p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

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

    :goto_4
    if-ltz v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

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
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 v1, 0x41a00000    # 20.0f

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    sub-float v0, p5, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const/4 v0, 0x0

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

    :goto_f
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v4

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
    goto/32 :goto_1a

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

    nop

    :goto_12
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_13
    move v2, p2

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

    :goto_14
    return v0

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ltz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    return v0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcPosition(IIFFFF)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_1d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    cmpg-float v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

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
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition:[I

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
    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->access$000(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 7
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
            "view",
            "start",
            "end",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    move-object v2, p3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :pswitch_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    move-object v5, p6

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v6, p7

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

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
    move v4, p5

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

    :goto_8
    move-object v1, p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    move v3, p4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v4, p5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v0, p0

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

    :goto_d
    goto/32 :goto_1d

    nop

    :goto_e
    move-object v6, p7

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v0, p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-virtual/range {p0 .. p7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    goto/32 :goto_2

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_16
    move-object v2, p3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    move v3, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    move-object v1, p2

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
    move-object v5, p6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_14

    nop

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 10
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
            "start",
            "end",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput v7, p6, v6

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    div-float/2addr v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    sub-float v7, p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4
    aput v6, p6, v9

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

    :goto_5
    aput-object v6, p5, v9

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

    :goto_6
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

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

    :goto_7
    aput v7, p6, v6

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

    :goto_8
    goto/16 :goto_19

    nop

    nop

    :goto_9
    goto/32 :goto_14

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
    goto/32 :goto_1d

    nop

    nop

    :goto_c
    div-float/2addr v7, v5

    nop

    nop

    goto/32 :goto_1a

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

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_e
    sub-float v5, v3, v1

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

    :goto_f
    goto :goto_19

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v9, 0x1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v7, :cond_0

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_13
    const-string v8, "percentX"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput-object v8, p5, v6

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

    :goto_15
    aget-object v7, p5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    sub-float v7, p3, v0

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

    :goto_17
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_18
    aput v6, p6, v9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    aput v7, p6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    aget-object v7, p5, v6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    sub-float v6, p4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1f
    div-float/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2c

    nop

    nop

    :goto_23
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    sub-float v7, p4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    aput v7, p6, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_26
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    :goto_28
    sub-float v4, v2, v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    if-nez v7, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sub-float v7, p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    div-float/2addr v6, v5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    div-float/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2f
    const-string v6, "percentY"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_31
    sub-float v6, p4, v1

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 15
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
            "start",
            "end",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-float v5, v3, v1

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

    :goto_1
    cmpg-double v7, v7, v9

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
    double-to-float v6, v6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    float-to-double v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    float-to-double v7, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_6
    const-wide v9, 0x3f1a36e2eb1c432dL    # 1.0E-4

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

    :goto_7
    div-float v7, v4, v6

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
    const-string v10, "distance ~ 0"

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_a
    const v1, 0x13

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

    :goto_b
    div-float/2addr v11, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    mul-float/2addr v12, v7

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    aget-object v13, p5, v9

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    div-float v10, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    aput-object v13, p5, v8

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    sub-float v12, p3, v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_16
    aput v11, p6, v8

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_17
    aput-object v14, p5, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_19
    sub-float v4, v2, v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

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

    :goto_1b
    aput v11, p6, v8

    nop

    :goto_1c
    goto/32 :goto_2e

    nop

    nop

    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1e
    aput v12, p6, v9

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_20
    float-to-double v8, v5

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

    :goto_21
    sub-float v11, p4, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_22
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    if-nez v13, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-ltz v7, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_27
    mul-float/2addr v13, v10

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_28
    sub-float v12, p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    sub-float/2addr v11, v12

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2a
    const/4 v9, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    aget-object v13, p5, v9

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

    :goto_2c
    mul-float/2addr v11, v7

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

    :goto_2d
    div-float/2addr v12, v6

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

    :goto_2e
    return-void

    nop

    nop

    :goto_2f
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_30
    aput v7, p6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_31
    aput v12, p6, v9

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

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

    :goto_33
    const-string v14, "percentX"

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v13, :cond_2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_35
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    :goto_36
    add-float/2addr v12, v13

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_26

    nop

    :goto_38
    sub-float v13, p4, v1

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

    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3b
    mul-float/2addr v12, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3c
    const-string v13, "percentY"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3d
    aput v7, p6, v9

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

    :goto_3e
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_17

    nop

    nop
.end method

.method positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 13
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
            "view",
            "start",
            "end",
            "x",
            "y",
            "attribute",
            "value"
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

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aput v9, p7, v12

    nop

    :goto_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    div-float v9, p5, v9

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    aput v10, p7, v9

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

    :goto_7
    div-float v10, p4, v10

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    check-cast v6, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_a
    div-float v10, p5, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v9, v8

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_d
    aput-object v9, p6, v12

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aput-object v11, p6, v9

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    int-to-float v10, v7

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_11
    aput v10, p7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_12
    int-to-float v10, v7

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_4

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    aput v10, p7, v9

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_16
    int-to-float v10, v8

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

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

    :goto_18
    int-to-float v10, v7

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v10, :cond_0

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

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

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

    :goto_1b
    aget-object v10, p6, v9

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    const/4 v12, 0x1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_21
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    const-string v9, "percentY"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    div-float v9, p5, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_24
    aget-object v10, p6, v9

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_25
    if-nez v10, :cond_2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    :goto_26
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    div-float v10, p4, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_28
    const v1, 0xe

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

    :goto_29
    const-string v11, "percentX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2a
    sub-float v4, v2, v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2b
    aput v9, p7, v12

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

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

    :goto_32
    int-to-float v9, v8

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

    :goto_33
    aput v10, p7, v12

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sub-float v5, v3, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_35
    div-float v10, p4, v10

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
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
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

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_11

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_2e

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_1c

    nop

    nop

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

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "percentY"

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

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto :goto_11

    nop

    :sswitch_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/16 :goto_1c

    nop

    :pswitch_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_1c

    nop

    nop

    :pswitch_2
    goto/32 :goto_2d

    nop

    nop

    :goto_d
    const-string v0, "drawPath"

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

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

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    :goto_11
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "percentX"

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

    :goto_14
    goto :goto_11

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_11

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

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

    :goto_18
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_19
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_23

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

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

    :goto_1f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_20
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toInt(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_4
        -0x4330437f -> :sswitch_5
        -0x3ca72634 -> :sswitch_1
        -0x314b3c77 -> :sswitch_3
        -0xbefb6fc -> :sswitch_0
        0x198424b3 -> :sswitch_6
        0x198424b4 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_6
    .end packed-switch

    :goto_24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_26
    const-string v0, "percentWidth"

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_27

    nop

    nop

    :goto_2a
    if-nez v0, :cond_4

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    :goto_2b
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2c
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2e
    const-string v0, "sizePercent"

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v0, "percentHeight"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_30
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_32
    const/4 v0, 0x0

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

    :goto_33
    goto/16 :goto_1c

    nop

    nop

    :pswitch_4
    goto/32 :goto_30

    nop

    nop

    :goto_34
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_6
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

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

    :goto_36
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_1c

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_39
    const-string v0, "transitionEasing"

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_11

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_1c

    nop

    :pswitch_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_40
    goto/32 :goto_8

    nop

    nop
.end method
