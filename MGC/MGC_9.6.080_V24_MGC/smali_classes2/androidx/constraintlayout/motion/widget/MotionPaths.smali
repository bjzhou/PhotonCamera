.class Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x0

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field static final PERPENDICULAR:I = 0x1

.field static final SCREEN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field height:F

.field mAnimateCircleAngleTo:I

.field mAnimateRelativeTo:I

.field mDrawPath:I

.field mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field mMode:I

.field mPathMotionArc:I

.field mPathRotate:F

.field mProgress:F

.field mRelativeAngle:F

.field mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

.field mTempDelta:[D

.field mTempValue:[D

.field position:F

.field time:F

.field width:F

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    const-string v3, "width"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const-string v5, "pathRotate"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const-string v0, "position"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const-string v2, "y"

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
    const-string v1, "x"

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

    :goto_f
    const-string v4, "height"

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

    :goto_10
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

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

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1a

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Ljava/util/LinkedHashMap;

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

    :goto_4
    const/high16 v1, 0x7fc00000    # Float.NaN

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
    const/4 v1, 0x0

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

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x12

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

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
    new-array v0, v0, [D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    new-array v1, v0, [D

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

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

    :goto_10
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_1f

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

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_12
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    const v0, 0x1f

    nop

    goto/32 :goto_1e

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
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    const v1, 0xb

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

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
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentWidth",
            "parentHeight",
            "c",
            "startTimePoint",
            "endTimePoint"
        }
    .end annotation

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

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
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

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

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

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

    :goto_c
    const/high16 v1, 0x7fc00000    # Float.NaN

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_24

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-array v1, v0, [D

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v0, 0x12

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

    :goto_17
    const v1, 0x1c

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

    :goto_18
    new-instance v1, Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_a

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

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

    :pswitch_0
    goto/32 :goto_2a

    nop

    nop

    :goto_1f
    new-array v0, v0, [D

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :pswitch_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    iget v0, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

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

    :goto_23
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_24
    goto/32 :goto_1c

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_26
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

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

    nop

    nop

    :goto_28
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initPolar(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    goto/32 :goto_14

    nop

    nop

    :goto_29
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

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

    :goto_2a
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method private b8a548655f7eae060a58306fa7eed2d2m(FF)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

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

    :goto_1
    sub-float v0, p1, p2

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

    :goto_2
    const v3, 0x358637bd    # 1.0E-6f

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    goto/32 :goto_13

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v1

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

    :goto_8
    cmpl-float v0, v0, v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    if-ne v0, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    if-gtz v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_22

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    :goto_11
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_4
    goto/32 :goto_12

    nop

    :goto_18
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    goto :goto_1b

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    move v1, v2

    nop

    :goto_22
    goto/32 :goto_6

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final xRotate(FFFFFF)F
    .locals 2
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
            "sin",
            "cos",
            "cx",
            "cy",
            "x",
            "y"
        }
    .end annotation

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-float/2addr v0, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    sub-float/2addr p5, p3

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

    :goto_2
    sub-float/2addr p4, p2

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

    :goto_3
    mul-float v0, p4, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const v1, 0x4

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

    :goto_6
    mul-float v1, p5, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const v0, 0x5

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    return v0

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    sub-float/2addr v0, v1

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

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method private static final yRotate(FFFFFF)F
    .locals 2
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
            "sin",
            "cos",
            "cx",
            "cy",
            "x",
            "y"
        }
    .end annotation

    goto/32 :goto_7

    nop

    nop

    :goto_0
    sub-float/2addr p5, p3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-float/2addr v0, p3

    nop

    goto/32 :goto_c

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

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    add-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_9
    mul-float v1, p5, p1

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

    nop

    nop

    :goto_b
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    return v0

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    mul-float v0, p4, p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    sub-float/2addr p4, p2

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


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
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
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_22

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

    goto/32 :goto_e

    nop

    nop

    :goto_2
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

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

    :goto_a
    const v0, 0x11

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_b
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    goto/32 :goto_10

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

    goto/32 :goto_11

    nop

    nop

    :goto_f
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    :goto_12
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->isContinuous()Z

    move-result v5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateCircleAngleTo:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

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

    :goto_16
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

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

    :goto_1a
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v5, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1e
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object v0, p0

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_22
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_24
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_26
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    :goto_27
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

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

    :goto_2a
    check-cast v3, Ljava/lang/String;

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

    :goto_2b
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    :goto_2d
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

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

    :goto_2f
    if-nez v4, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    :goto_30
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

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

    :goto_32
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2d

    nop

    nop

    :goto_34
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_34

    nop

    nop

    :goto_36
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

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
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x15

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

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

.method public configureRelativeTo(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toOrbit"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x6

    nop

    goto/32 :goto_b

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

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    const v0, 0x1d

    nop

    goto/32 :goto_0

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getPos(D)[D

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

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    float-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "points",
            "mask",
            "custom",
            "arcMode"
        }
    .end annotation

    goto/32 :goto_f

    nop

    nop

    :goto_0
    aget-boolean v4, p2, v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2
    aput-boolean v4, p2, v0

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
    invoke-direct {p0, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v5

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
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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

    :goto_6
    invoke-direct {p0, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    iget v3, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    or-int/2addr v5, p4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    iget v6, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    aget-boolean v4, p2, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v0, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c
    or-int/2addr v4, v5

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

    :goto_d
    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v1

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

    :goto_e
    aput-boolean v4, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    iget v6, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v0, v3, 0x1

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

    :goto_12
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_13
    or-int/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_2d

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

    nop

    :goto_15
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    or-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v3, v0, 0x1

    nop

    nop

    goto/32 :goto_a

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

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    or-int/2addr v4, v5

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1c
    aget-boolean v4, p2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    or-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1e
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_15

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v3, v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aput-boolean v4, p2, v3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_24
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_25
    or-int v5, v1, v2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aput-boolean v4, p2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_27
    add-int/lit8 v3, v0, 0x1

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_20

    nop

    :goto_2a
    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2b
    aget-boolean v4, p2, v3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2c
    or-int v5, v1, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2d
    aput-boolean v4, p2, v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v6, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aget-boolean v4, p2, v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_30
    or-int/2addr v5, p4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_31
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method fillStandard([D[I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "toUse"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x20

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

    :goto_2
    move v1, v3

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
    aput v1, v0, v2

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x2

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
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_29

    nop

    nop

    :goto_b
    aput v1, v0, v2

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
    if-lt v2, v3, :cond_0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_e
    if-lt v3, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_f
    const v1, 0x7

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_10
    aget v3, p2, v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    new-array v0, v0, [F

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_13
    goto/32 :goto_2c

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

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

    :goto_16
    const/4 v0, 0x6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_13

    nop

    :goto_18
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_19
    array-length v4, v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    :goto_1b
    aget v4, v0, v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1c
    aget v4, p2, v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1e
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_20
    add-int/lit8 v3, v1, 0x1

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

    :goto_21
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    float-to-double v4, v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_25
    aput-wide v4, p1, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x0

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

    :goto_27
    const/4 v2, 0x4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_29
    array-length v3, p2

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
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_a

    nop

    nop

    :goto_2e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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
.end method

.method getBounds([I[D[FI)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "toUse",
            "data",
            "point",
            "offset"
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
    move v3, v7

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
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

    :goto_4
    double-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    aget-wide v7, p2, v6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v6, v7, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_25

    nop

    nop

    :goto_8
    aput v2, p3, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    add-int/lit8 v6, p4, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v0, 0xc

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    move v2, v7

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    aget v8, p1, v6

    nop

    nop

    nop

    packed-switch v8, :pswitch_data_0

    goto/32 :goto_17

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_12
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    array-length v7, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    goto/16 :goto_1f

    nop

    :pswitch_1
    goto/32 :goto_22

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aput v3, p3, v6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_1f

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    move v0, v7

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_d

    nop

    :goto_21
    goto/32 :goto_8

    nop

    nop

    :goto_22
    move v1, v7

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method getCenter(D[I[D[FI)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "toUse",
            "data",
            "point",
            "offset"
        }
    .end annotation

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_0
    aput v0, p5, v1

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

    :goto_1
    div-float v0, v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2
    double-to-float v3, v9

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

    :goto_3
    mul-double/2addr v0, v11

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_5
    sub-double/2addr v9, v11

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_7
    move-object/from16 v17, v10

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v10, 0x2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_28

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    float-to-double v11, v15

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_d
    move/from16 v18, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object/from16 v16, v11

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

    :goto_f
    if-nez v8, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v8, v12, v13, v11, v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_11
    new-array v11, v10, [F

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    :goto_13
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_14
    float-to-double v0, v2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aget v14, v11, v14

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_16
    sub-double/2addr v9, v11

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    float-to-double v0, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_18
    double-to-float v1, v9

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_19
    aget-wide v9, p4, v8

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1a
    float-to-double v11, v1

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

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_1c
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    move/from16 v2, v16

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1f
    aget v8, v11, v8

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

    :goto_20
    move v2, v13

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

    :goto_21
    const/high16 v0, 0x40000000    # 2.0f

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

    nop

    :goto_22
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_23
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_24
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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

    :goto_25
    aget v10, v1, v8

    nop

    packed-switch v10, :pswitch_data_0

    goto/32 :goto_b

    nop

    nop

    :goto_26
    move v5, v9

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_27
    move v2, v9

    nop

    nop

    :goto_28
    goto/32 :goto_2d

    nop

    nop

    :goto_29
    goto :goto_28

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2a
    move/from16 v18, v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_9

    nop

    nop

    :goto_2c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2e
    float-to-double v9, v14

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2f
    float-to-double v11, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_30
    move-object/from16 v0, p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_31
    move-wide/from16 v12, p1

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

    :goto_32
    div-float v1, v4, v0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-float/2addr v0, v3

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

    :goto_34
    move v4, v9

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

    :goto_35
    goto/32 :goto_1c

    nop

    :goto_36
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v14, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v1, p6, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_3e

    nop

    nop

    :goto_3b
    mul-double/2addr v11, v0

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

    :goto_3c
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

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

    nop

    :goto_3d
    float-to-double v9, v8

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

    :goto_3e
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v1, 0x11

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_40
    if-lt v8, v9, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_42
    const/4 v6, 0x0

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

    :goto_43
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_44
    float-to-double v11, v2

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

    :goto_45
    const v0, 0x7

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_46
    add-float/2addr v0, v7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    double-to-float v9, v9

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

    :goto_48
    add-float/2addr v1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_49
    move/from16 v16, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4a
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-double/2addr v9, v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4d
    move v3, v9

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_4e
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_59

    nop

    nop

    :goto_50
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    new-array v10, v10, [F

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_52
    move v13, v1

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

    :goto_53
    aput v1, p5, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_54
    div-float v1, v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_55
    div-float v1, v4, v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move v15, v2

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

    :goto_57
    add-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_58
    sub-double/2addr v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_59
    array-length v9, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_5a
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_5b
    add-int v0, v0, v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop
.end method

.method getCenter(D[I[D[F[D[F)V
    .locals 31
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
            "p",
            "toUse",
            "data",
            "point",
            "vdata",
            "velocity"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    aget v0, v12, v16

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2
    const/high16 v8, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_4
    move/from16 v22, v1

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

    :goto_5
    const v0, 0x7

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

    :goto_6
    goto/16 :goto_36

    nop

    :pswitch_0
    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_7
    move v7, v14

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_8
    const/high16 v12, 0x40000000    # 2.0f

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_9
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v17, 0x1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v1, p3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    :goto_10
    float-to-double v13, v12

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    add-float/2addr v1, v10

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move/from16 v29, v14

    nop

    nop

    :goto_13
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_14
    float-to-double v0, v12

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_15
    float-to-double v14, v13

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_16
    aput v1, p5, v16

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    float-to-double v8, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_78

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move/from16 v26, v6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1c
    move v4, v13

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

    :goto_1d
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move/from16 v27, v7

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_1f
    aget v2, v12, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_20
    mul-double/2addr v0, v14

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-array v12, v12, [F

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_22
    float-to-double v0, v12

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

    :goto_23
    move/from16 v18, v9

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_24
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_25
    sub-double/2addr v13, v6

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_26
    move/from16 v9, v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_27
    move/from16 v2, v25

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move/from16 v30, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_29
    move/from16 v21, v3

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_2a
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    mul-double/2addr v8, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_2c
    const/16 v16, 0x0

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

    :goto_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_50

    nop

    nop

    :goto_2f
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_30
    move/from16 v28, v3

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_31
    float-to-double v7, v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v24, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_35
    move v6, v14

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_37
    move v8, v14

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    div-float v9, v4, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_39
    const/4 v12, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_3a
    float-to-double v14, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_3b
    move/from16 v25, v6

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    double-to-float v6, v13

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

    :goto_3d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3e
    move/from16 v3, v20

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3f
    float-to-double v0, v12

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_40
    mul-double/2addr v14, v0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_41
    move/from16 v20, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_42
    div-float v1, v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_43
    float-to-double v13, v1

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_44
    if-nez v15, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_45
    aput v14, p7, v17

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

    :goto_46
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_47
    move-wide/from16 v8, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_48
    aput v13, p7, v16

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_49
    rem-int v0, v0, v1

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

    :goto_4a
    move/from16 v13, v23

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move/from16 v21, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4c
    move v2, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4d
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_2f

    nop

    :goto_4f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :goto_50
    goto/32 :goto_4e

    nop

    nop

    :goto_51
    add-float/2addr v13, v6

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

    nop

    :goto_52
    add-double/2addr v7, v13

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move/from16 v12, v21

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

    :goto_54
    move v9, v14

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

    :goto_55
    move/from16 v19, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_56
    float-to-double v6, v12

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_57
    double-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_58
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_59
    double-to-float v14, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5a
    sub-double/2addr v7, v14

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5b
    aget v15, v1, v12

    nop

    nop

    packed-switch v15, :pswitch_data_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_36

    nop

    :pswitch_1
    goto/32 :goto_4c

    nop

    nop

    :goto_5d
    move/from16 v21, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5e
    aget v1, v0, v17

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5f
    float-to-double v7, v2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    float-to-double v0, v12

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

    :goto_61
    float-to-double v14, v13

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_62
    new-array v0, v12, [F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_63
    add-float/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_64
    aput v0, p5, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_65
    move/from16 v21, v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_66
    move-object/from16 v20, v12

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_67
    add-double/2addr v7, v0

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

    :goto_68
    const v1, 0x9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_69
    mul-double/2addr v8, v6

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_6a
    div-float v0, v5, v0

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_6b
    array-length v13, v1

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v15, v8, v9, v0, v12}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    goto/32 :goto_74

    nop

    nop

    :goto_6d
    double-to-float v14, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_6e
    move/from16 v23, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6f
    double-to-float v0, v7

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_70
    move/from16 v26, v6

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

    :goto_71
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_72
    move/from16 v23, v7

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    add-float/2addr v0, v11

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_74
    aget v15, v0, v16

    nop

    nop

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

    :goto_75
    add-double/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_76
    div-float v13, v8, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_77
    const/4 v12, 0x0

    nop

    nop

    :goto_78
    goto/32 :goto_6b

    nop

    nop

    :goto_79
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

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

    :goto_7a
    double-to-float v13, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_7b
    float-to-double v8, v3

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_7c
    mul-double/2addr v13, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_7d
    sub-double/2addr v13, v8

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_7e
    float-to-double v13, v9

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    move/from16 v27, v7

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_80
    move/from16 v25, v2

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    aget-wide v14, p6, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_82
    div-float v14, v9, v12

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_83
    float-to-double v13, v9

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_84
    move v3, v13

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

    :goto_85
    sub-double/2addr v6, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_86
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_87
    const/4 v6, 0x0

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

    :goto_88
    float-to-double v6, v7

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_89
    float-to-double v6, v15

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-lt v12, v13, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_8b
    add-double/2addr v7, v0

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

    :goto_8c
    move/from16 v13, v21

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8d
    move/from16 v18, v9

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    move/from16 v22, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_8f
    move/from16 v25, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_90
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

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

    :goto_91
    move/from16 v28, v3

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_92
    const/high16 v6, 0x40000000    # 2.0f

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    aget-wide v13, p4, v12

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_94
    mul-double/2addr v0, v14

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_95
    div-float v7, v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    move/from16 v29, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_36

    nop

    :pswitch_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_99
    move v3, v6

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_9a
    add-float/2addr v14, v7

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    move/from16 v19, v8

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_9c
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9d
    move v5, v13

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_9e
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_84

    nop

    nop

    nop
.end method

.method getCenterVelocity(D[I[D[FI)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "toUse",
            "data",
            "point",
            "offset"
        }
    .end annotation

    goto/32 :goto_22

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    move v15, v2

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

    :goto_2
    add-double/2addr v9, v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    new-array v10, v10, [F

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

    :goto_4
    div-float v1, v4, v0

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

    :goto_5
    float-to-double v11, v1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_2c

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    float-to-double v0, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v1, p3

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_2c

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    move v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_10
    const/4 v10, 0x2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v14, 0x1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_12
    add-float/2addr v1, v6

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_13
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_14
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_17
    float-to-double v11, v15

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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
    move v3, v9

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    move v5, v9

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1d
    sub-double/2addr v9, v11

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    if-lt v8, v9, :cond_0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v17, v10

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

    :goto_20
    float-to-double v11, v1

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

    :goto_21
    move/from16 v18, v2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_23
    float-to-double v9, v14

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aget v14, v11, v14

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

    :goto_25
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_26
    float-to-double v9, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_27
    move v2, v13

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    double-to-float v1, v9

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_29
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v2, v9

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2d
    new-array v11, v10, [F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v8, v12, v13, v11, v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2f
    div-float v0, v5, v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aput v0, p5, v1

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
    goto :goto_3e

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_36
    float-to-double v11, v2

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

    :goto_37
    sub-double/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_38
    move-wide/from16 v12, p1

    nop

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

    :goto_39
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3a
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3c
    double-to-float v3, v9

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_42

    nop

    nop

    :goto_3f
    aget-wide v9, p4, v8

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

    :goto_40
    div-float v1, v4, v0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    aget v10, v1, v8

    nop

    nop

    packed-switch v10, :pswitch_data_0

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    array-length v9, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

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

    :goto_44
    aget v8, v11, v8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_45
    move/from16 v2, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_46
    aput v1, p5, p6

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

    :goto_47
    move/from16 v16, v3

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_48
    mul-double/2addr v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_49
    mul-double/2addr v11, v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4a
    move v13, v1

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

    nop

    :goto_4b
    add-int/lit8 v1, p6, 0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_2a

    nop

    nop

    :goto_4d
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_2c

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4f
    add-float/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_51
    sub-double/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_52
    div-float v1, v5, v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_53
    move-object/from16 v16, v11

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

    :goto_54
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_55
    move/from16 v18, v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_56
    double-to-float v9, v9

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_57
    add-float/2addr v0, v7

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

    :goto_58
    if-nez v8, :cond_2

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5a
    float-to-double v0, v2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_5b
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "offset"
        }
    .end annotation

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    aput-wide v3, p2, p3

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

    :goto_4
    const/4 v2, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v3, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x3

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

    :goto_a
    aput-wide v5, p2, p3

    nop

    goto/32 :goto_c

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

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v3, v3, 0x1

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

    :goto_d
    goto/32 :goto_1a

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    float-to-double v3, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    new-array v2, v1, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    if-eq v1, v2, :cond_2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_17
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    return v1

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    :goto_1b
    add-int/lit8 v4, p3, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    float-to-double v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1f
    goto :goto_14

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget v5, v2, v3

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    const v1, 0x14

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

    :goto_24
    move p3, v4

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const v0, 0xf

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

    :goto_8
    goto/32 :goto_1

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_6

    nop

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

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
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v1

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

    :goto_e
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method getRect([I[D[FI)V
    .locals 41
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "toUse",
            "data",
            "path",
            "offset"
        }
    .end annotation

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_0
    cmpl-float v26, v12, v26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    move/from16 v21, v3

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_4
    move/from16 v27, v4

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-float v9, v9, v16

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move/from16 v24, v3

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v11, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_8
    move/from16 v8, v18

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_9
    mul-double/2addr v1, v6

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_a
    move/from16 v23, v10

    nop

    :goto_b
    goto/32 :goto_2b

    nop

    nop

    :goto_c
    move/from16 v40, v17

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

    :goto_d
    sub-double/2addr v8, v6

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_e
    move v8, v6

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_f
    add-float/2addr v6, v15

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

    :goto_10
    add-float v27, v0, v6

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

    :goto_11
    const/high16 v22, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_12
    const/high16 v22, 0x40000000    # 2.0f

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-float v9, v22, v26

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_14
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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

    nop

    :goto_15
    move/from16 v31, v7

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

    nop

    :goto_16
    double-to-float v8, v8

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_18
    float-to-double v6, v3

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move/from16 v32, v3

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

    :goto_1a
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_1b
    move/from16 v33, v5

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v6, v8, :cond_0

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a1

    nop

    nop

    :goto_1d
    move/from16 v2, v20

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_1e
    move/from16 v9, v38

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-float v7, v22, v26

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_20
    move/from16 v1, v34

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_21
    float-to-double v6, v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    div-float v25, v5, v22

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

    :goto_23
    const/16 v22, 0x0

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_24
    move/from16 v0, v20

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_25
    move/from16 v30, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_26
    move/from16 v23, v10

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sub-float v28, v10, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_28
    move v5, v8

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

    :goto_29
    mul-float v28, v28, v11

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v1, p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2b
    move v0, v2

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v9, 0x0

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_2d
    move/from16 v31, v20

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

    :goto_2e
    move/from16 v29, v25

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_2f
    mul-float v22, v22, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_30
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v37

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aput v6, p3, v4

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sub-double/2addr v7, v1

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

    :goto_33
    sub-float v26, v9, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_34
    div-float v2, v4, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-float v8, v28, v27

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

    :goto_37
    float-to-double v9, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_38
    aput v9, p3, v3

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move/from16 v7, v36

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget-wide v8, p2, v6

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :goto_3c
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_3e
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v26

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_3f
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_41
    mul-float v22, v22, v12

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_ba

    nop

    :pswitch_0
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    aput v1, p3, v3

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move/from16 v18, v8

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_46
    float-to-double v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_47
    const/4 v7, 0x0

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/high16 v26, 0x3f800000    # 1.0f

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

    :goto_49
    aput v20, p3, v3

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

    :goto_4a
    move/from16 v20, v26

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

    :goto_4b
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenterX()F

    move-result v6

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v34

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4d
    if-eqz v26, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4f
    add-float v26, v1, v9

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move v0, v5

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

    :goto_51
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_52
    move/from16 v2, v21

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_53
    move/from16 v21, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_54
    mul-double/2addr v1, v9

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    add-float v0, v28, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_56
    move/from16 v33, v5

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_57
    add-int/lit8 v3, p4, 0x1

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_58
    move v7, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move/from16 v21, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5a
    add-float v20, v22, v26

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :cond_2
    goto/32 :goto_9e

    nop

    :goto_5d
    add-float v6, v2, v4

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

    :goto_5e
    if-nez v22, :cond_3

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_5f
    move/from16 v17, v6

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_60
    add-float v1, v22, v26

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_61
    aput v10, p3, v4

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move/from16 v23, v9

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

    :goto_63
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

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

    :goto_64
    aput v0, p3, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_65
    add-int/lit8 v3, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v39

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    sub-double/2addr v7, v1

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_68
    add-float v20, v20, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_69
    double-to-float v1, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_6a
    move/from16 v26, v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6b
    move/from16 v31, v9

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_6c
    move v4, v8

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    mul-float v28, v28, v11

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    array-length v8, v1

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

    :goto_6f
    add-float v7, v7, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_70
    mul-float v22, v22, v12

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_71
    move/from16 v20, v9

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    add-float v10, v28, v27

    nop

    :goto_73
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_74
    add-float v1, v1, v16

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

    :goto_75
    double-to-float v3, v3

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

    :goto_76
    move/from16 v20, v2

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    move/from16 v21, v4

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_78
    cmpl-float v27, v11, v26

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v15, 0x0

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_7a
    add-float v25, v1, v26

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    add-int/lit8 v4, v3, 0x1

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

    :goto_7d
    float-to-double v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_7e
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v26

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_80
    add-float/2addr v0, v15

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_81
    sub-float v22, v9, v26

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_82
    move/from16 v10, v39

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_83
    add-int/lit8 v3, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_84
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    move/from16 v22, v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_86
    move/from16 v20, v2

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

    :goto_87
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v36

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_88
    move v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_89
    add-int/lit8 v4, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_8a
    add-double/2addr v8, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_8c
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8d
    move v9, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    if-eqz v26, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :cond_4
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    mul-float v28, v28, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_90
    move/from16 v19, v9

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move/from16 v28, v24

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_92
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_93
    mul-float v28, v28, v11

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_94
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_d5

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_97
    move/from16 v8, v37

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

    :goto_98
    mul-float v26, v26, v14

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_99
    sub-float v28, v6, v27

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

    nop

    :goto_9a
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_9b
    add-float v9, v3, v5

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_9c
    const/high16 v14, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_9d
    double-to-float v2, v8

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_9e
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_a0
    div-float v2, v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_a1
    move/from16 v19, v9

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/16 :goto_ba

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v38

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    move v2, v8

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_a5
    goto/16 :goto_ba

    nop

    :pswitch_2
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    div-float v24, v4, v22

    nop

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

    :goto_a7
    move/from16 v30, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    move/from16 v25, v6

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    float-to-double v8, v6

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_aa
    sub-float v22, v1, v26

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    div-float v27, v27, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_ac
    float-to-double v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_ad
    move/from16 v30, v8

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_ae
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_af
    float-to-double v4, v2

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_b0
    const/high16 v13, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_b1
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    add-int/lit8 v4, v3, 0x1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_b4
    move/from16 v32, v3

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_b5
    move v10, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_b6
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b7
    move/from16 v24, v3

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    add-float/2addr v10, v15

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    move/from16 v17, v9

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    move/from16 v20, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    move v3, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_bd
    move/from16 v6, v35

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_be
    if-nez v27, :cond_5

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    :goto_bf
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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

    :goto_c0
    mul-float v26, v26, v13

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_c1
    sub-float v28, v8, v27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_c2
    add-float v6, v28, v27

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    aget v9, v1, v6

    nop

    packed-switch v9, :pswitch_data_0

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_c4
    sub-float v22, v20, v26

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    sub-float v22, v7, v26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_c6
    move v3, v8

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_c7
    add-float/2addr v8, v15

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

    :goto_c8
    add-float v24, v0, v24

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_c9
    double-to-float v4, v4

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

    :goto_ca
    move/from16 v2, v21

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/16 :goto_ea

    nop

    :goto_cc
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_cd
    mul-float v22, v22, v12

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_ce
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    move/from16 v6, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_d0
    aput v8, p3, v4

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_d1
    add-int/lit8 v3, v4, 0x1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

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

    :goto_d3
    add-float v25, v1, v25

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    move/from16 v21, v4

    nop

    nop

    :goto_d5
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenterY()F

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_d7
    move/from16 v30, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_d8
    const/high16 v22, 0x40000000    # 2.0f

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

    nop

    :goto_d9
    if-nez v6, :cond_6

    nop

    goto/32 :goto_e7

    nop

    nop

    :cond_6
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    cmpl-float v22, v21, v22

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_db
    move v9, v8

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_dc
    float-to-double v1, v0

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    add-int/lit8 v4, v3, 0x1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_de
    float-to-double v7, v6

    nop

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

    :goto_df
    move/from16 v31, v1

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

    :goto_e0
    sub-float v26, v6, v0

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

    :goto_e1
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

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

    :goto_e2
    const/high16 v12, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_e3
    sub-float v28, v0, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_e4
    goto/16 :goto_ba

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_28

    nop

    nop

    :goto_e5
    const/16 v17, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e6
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :goto_e7
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    aput v7, p3, v3

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_e9
    move/from16 v6, v40

    nop

    :goto_ea
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_eb
    move/from16 v22, v2

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_ec
    div-float v26, v26, v22

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_ed
    move/from16 v9, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    if-nez v26, :cond_7

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_7
    goto/32 :goto_4f

    nop

    nop

    :goto_ef
    goto/16 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_f0
    add-float v24, v0, v26

    nop

    nop

    nop

    nop

    :goto_f1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

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

.method initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "startTimePoint",
            "endTimePoint"
        }
    .end annotation

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    move-object/from16 v6, p0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v4, p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    move-object/from16 v2, p3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    div-float v17, v9, v16

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

    :goto_5
    const/high16 v4, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_7
    sub-float/2addr v3, v15

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

    :goto_8
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

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

    :goto_9
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_b
    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    :goto_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    div-float v11, v11, v16

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_f
    div-float/2addr v3, v4

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

    :goto_10
    sub-float v15, v15, v21

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_11
    sub-float v11, v6, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_12
    mul-float v21, v11, v14

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    move v7, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_14
    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-float v15, v15, v21

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

    nop

    :goto_16
    iget v12, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_17
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    const v1, 0x18

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    iput v15, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1a
    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1c
    div-float v21, v21, v16

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

    :goto_1d
    goto/32 :goto_5c

    nop

    nop

    :goto_1e
    mul-float v3, v10, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-float/2addr v12, v3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_22
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_23
    int-to-float v3, v3

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

    :goto_24
    mul-float v21, v20, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_25
    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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

    :goto_26
    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_27
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-float v21, v11, v9

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_29
    div-float v8, v8, v16

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_93

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_2c
    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

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

    :goto_2d
    move/from16 v15, v18

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_2e
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

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

    :goto_2f
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_30
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_31
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_33
    add-float v19, v3, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_34
    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_35
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_36
    mul-float v21, v10, v5

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

    :goto_37
    div-float v19, v12, v16

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

    :goto_38
    div-float v15, v15, v16

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_39
    div-float v21, v21, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_3a
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3c
    sub-float v20, v8, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3d
    mul-float v15, v20, v14

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_0
    goto/32 :goto_5b

    nop

    :goto_3f
    add-float/2addr v6, v8

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_40
    iput v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_41
    div-float v21, v21, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_42
    add-float/2addr v9, v3

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_43
    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

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

    :goto_44
    iget v15, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    mul-float v21, v11, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_48
    add-float v2, v2, v21

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

    :goto_49
    const/4 v2, 0x0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/high16 v16, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_82

    nop

    :goto_4c
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move-object/from16 v0, p1

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_4e
    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move/from16 v18, v3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_50
    add-float/2addr v8, v11

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

    :goto_51
    goto/16 :goto_73

    nop

    :goto_52
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    int-to-float v3, v3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    float-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_55
    float-to-int v3, v3

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

    :goto_56
    iget v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_57
    mul-float v15, v13, v7

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_58
    iget v6, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_59
    if-nez v9, :cond_1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5d
    mul-float v21, v13, v7

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_61
    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_85

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_64
    add-float v2, v2, v21

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :cond_2
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_66
    float-to-int v3, v12

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

    :goto_67
    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-nez v5, :cond_3

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_3
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_69
    return-void

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_1d

    nop

    nop

    :goto_6b
    int-to-float v3, v3

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

    nop

    nop

    :goto_6c
    move v5, v3

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_6d
    if-nez v12, :cond_4

    nop

    goto/32 :goto_4c

    nop

    :cond_4
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget v15, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_6f
    mul-float v21, v20, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_70
    int-to-float v2, v2

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_71
    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_72
    iget v15, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    :goto_73
    goto/32 :goto_71

    nop

    nop

    :goto_74
    int-to-float v3, v3

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

    :goto_75
    float-to-int v15, v15

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    move/from16 v3, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_77
    add-float v2, v2, v21

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_78
    move v14, v3

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_79
    if-nez v15, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    float-to-int v3, v9

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7b
    if-nez v7, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    int-to-float v15, v15

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7d
    move-object/from16 v1, p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

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

    :goto_7f
    add-float v17, v15, v17

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_80
    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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

    :goto_81
    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_83
    add-float v2, v2, v21

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_84
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_86
    sub-float v2, v2, v21

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_87
    sub-float v10, v8, v9

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_88
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_89
    mul-float v3, v13, v7

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8a
    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_b

    nop

    nop

    :goto_8d
    sub-float v2, v2, v21

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_8e
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    float-to-int v2, v2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    mul-float v21, v10, v5

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_91
    add-float/2addr v3, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_92
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    nop

    :goto_93
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    sub-float v13, v11, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_95
    iput-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop
.end method

.method initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "startTimePoint",
            "endTimePoint"
        }
    .end annotation

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    move/from16 v16, v4

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_3
    sub-float v11, v11, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-float/2addr v15, v11

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

    :goto_6
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

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

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    :goto_8
    goto/32 :goto_6a

    nop

    nop

    :goto_9
    mul-float v11, v9, v7

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v6, :cond_0

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

    :cond_0
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_b
    iget v2, v4, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_c
    iget v10, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_54

    nop

    nop

    :goto_f
    move-object/from16 v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x16

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    mul-float v23, v8, v6

    nop

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

    :goto_12
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_13
    sub-float v13, v2, v17

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-float v19, v12, v11

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_16
    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_17
    int-to-float v4, v4

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

    :goto_18
    iput v11, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_19
    mul-float v23, v1, v10

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    add-float/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_1f
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    nop

    :goto_20
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v15, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_24
    div-float v11, v11, v18

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_25
    add-float v17, v15, v17

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput v2, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_27
    float-to-int v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_28
    move v15, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-float v2, v2, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x15

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

    :goto_2c
    mul-float v19, v1, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_2d
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_2e
    add-float v1, v1, v20

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_2f
    add-float/2addr v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_30
    int-to-float v11, v11

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

    :goto_31
    add-float/2addr v4, v11

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_32
    move-object/from16 v5, p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v11, v4, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    :goto_34
    goto/32 :goto_56

    nop

    nop

    :goto_35
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_36
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_37
    float-to-int v11, v15

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_38
    move-object/from16 v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_39
    div-float v24, v24, v18

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_3a
    div-float v19, v19, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3b
    float-to-int v11, v12

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-float v1, v1, v24

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_3e
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3f
    if-nez v11, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move/from16 v22, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_41
    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_42
    iput v2, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_43
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_44
    iget v10, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput v0, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_47
    if-nez v10, :cond_3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_87

    nop

    :goto_49
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_4a
    iput v1, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4b
    const/high16 v13, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_4c
    move v7, v4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/high16 v18, 0x40000000    # 2.0f

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_4e
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_4f
    iput v11, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_50
    sub-float v2, v2, v23

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

    :goto_51
    mul-float v11, v13, v10

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

    :goto_52
    int-to-float v2, v2

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

    :goto_53
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_54
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_55
    int-to-float v11, v11

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

    :goto_56
    neg-float v12, v13

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

    :goto_57
    add-float v2, v2, v19

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_58
    const/high16 v5, 0x42c80000    # 100.0f

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

    :goto_59
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_5a
    int-to-float v11, v11

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5b
    div-float/2addr v4, v5

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

    :goto_5c
    iput v10, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

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

    :goto_5d
    if-nez v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    :goto_5e
    float-to-int v4, v4

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

    :goto_5f
    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_60
    int-to-float v4, v4

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_61
    iget v9, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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

    :goto_62
    const/4 v11, 0x0

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

    :goto_63
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_64
    mul-float v11, v9, v7

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_65
    const/high16 v18, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_66
    add-float/2addr v15, v11

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_67
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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

    :goto_68
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_69
    iput v11, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_6a
    move-object/from16 v0, p0

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_6c
    add-float v11, v11, v19

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_6d
    sub-float/2addr v8, v9

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_6e
    div-float/2addr v2, v13

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    int-to-float v1, v1

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

    :goto_70
    add-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_71
    iput v2, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_72
    move v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_73
    mul-float v11, v8, v6

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

    nop

    :goto_74
    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_75
    sub-float v1, v1, v24

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_76
    mul-float v24, v13, v10

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_77
    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_78
    mul-float v24, v9, v7

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

    :goto_79
    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    add-float/2addr v14, v11

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

    :goto_7c
    div-float v17, v4, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_7d
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

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

    :goto_7e
    add-float/2addr v12, v11

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

    nop

    :goto_7f
    mul-float v19, v8, v6

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_80
    move v10, v4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_81
    move-object/from16 v1, p1

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move-object/from16 v0, p2

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

    :goto_83
    move/from16 v23, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    div-float v23, v23, v18

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

    :goto_85
    div-float/2addr v1, v13

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    :goto_87
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget v11, v4, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_89
    sub-float/2addr v9, v10

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8a
    mul-float v20, v15, v11

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    div-float v14, v12, v13

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    move/from16 v21, v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_8d
    iput-object v2, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8e
    iput v1, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_8f
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_90
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_33

    nop

    nop

    :goto_92
    iput v2, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_93
    sub-float v1, v0, v14

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_94
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    float-to-int v11, v11

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_96
    move-object/from16 v2, p2

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
.end method

.method initPolar(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
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
            "parentWidth",
            "parentHeight",
            "c",
            "s",
            "e"
        }
    .end annotation

    goto/32 :goto_68

    nop

    nop

    :goto_0
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_1
    if-nez v7, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    :cond_0
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    add-float/2addr v6, v4

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

    :goto_5
    iput-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

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

    :goto_6
    iget v7, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-float/2addr v7, v8

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_8
    sub-float/2addr v8, v9

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    :goto_a
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v7, v0

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

    :goto_c
    iget v2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    :goto_d
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_e
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_f
    mul-float/2addr v7, v8

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_91

    nop

    :cond_1
    goto/32 :goto_66

    nop

    nop

    :goto_11
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

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

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

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

    :goto_14
    iget v6, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_15
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_17
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_8d

    nop

    nop

    :goto_19
    goto/32 :goto_8c

    nop

    nop

    :goto_1a
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1b
    move v7, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1c
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_1d
    iget v7, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_1e
    if-nez v7, :cond_2

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

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
    add-float/2addr v7, v9

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_21
    const/high16 v1, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_22
    add-float/2addr v7, v9

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

    :goto_23
    move v6, v0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7e

    nop

    :goto_27
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    :goto_28
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_95

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_94

    nop

    nop

    :goto_2b
    iget-object v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2c
    add-float/2addr v4, v7

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

    :goto_2d
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2f
    mul-float/2addr v7, v0

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_30
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_31
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

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

    :goto_32
    invoke-static {v7}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_33
    sub-float/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_34
    div-float/2addr v0, v1

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

    nop

    :goto_35
    mul-float/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_36
    if-nez v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4e

    nop

    nop

    :goto_37
    int-to-float v4, v4

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

    :goto_38
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v8, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_3a
    iget v8, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    :goto_3c
    goto/32 :goto_6e

    nop

    nop

    :goto_3d
    iget v4, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_3e
    iget v9, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_3f
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_40
    const v1, 0x1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_41
    sub-float/2addr v8, v9

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

    :goto_42
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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

    :goto_43
    mul-float v7, v3, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_44
    iget v9, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_45
    goto :goto_3c

    nop

    nop

    :pswitch_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_47
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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

    :goto_48
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    :goto_49
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_4a
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_4b
    mul-float/2addr v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4c
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    nop

    packed-switch v7, :pswitch_data_0

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4d
    float-to-int v4, v6

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

    :goto_4e
    move v7, v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4f
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

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

    :goto_51
    iget v3, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sub-float/2addr v8, v9

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_53
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_54
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_56
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_57
    iget v8, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_58
    sub-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5b
    iget v5, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5c
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_5d
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_5e
    if-nez v7, :cond_5

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    :goto_5f
    mul-float/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget v2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_61
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_62
    iget v9, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_63
    sub-float/2addr v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    move v7, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_65
    int-to-float v4, v4

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

    :goto_66
    move v2, v0

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_67
    sub-float/2addr v4, v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_68
    const v0, 0xd

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_69
    iget v8, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_6a
    const/high16 v4, 0x3f800000    # 1.0f

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

    :goto_6b
    goto/16 :goto_49

    nop

    nop

    :goto_6c
    goto/32 :goto_48

    nop

    nop

    :goto_6d
    add-float/2addr v7, v9

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_6e
    iget v8, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget v7, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget v8, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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

    :goto_71
    if-nez v7, :cond_6

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

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_73
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_74
    mul-float v4, v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_75
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_78
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_79
    float-to-int v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_7a
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_7
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_7c
    goto/32 :goto_1c

    nop

    nop

    :goto_7d
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_80
    move v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_81
    add-float/2addr v7, v9

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

    :goto_82
    sub-float/2addr v5, v6

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_2e

    nop

    :pswitch_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_84
    mul-float/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_86
    add-float/2addr v7, v8

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

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

    :goto_88
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sub-float/2addr v7, v8

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_28

    nop

    nop

    :goto_8b
    goto/32 :goto_27

    nop

    nop

    :goto_8c
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    nop

    :goto_8d
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget v9, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_8f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_d

    nop

    :goto_91
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_92
    mul-float/2addr v7, v8

    nop

    :goto_93
    goto/32 :goto_4f

    nop

    nop

    :goto_94
    iget v7, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_96
    if-nez v7, :cond_8

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentWidth",
            "parentHeight",
            "c",
            "startTimePoint",
            "endTimePoint"
        }
    .end annotation

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_1
    add-float v19, v4, v19

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

    :goto_2
    sub-float/2addr v12, v15

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_3
    div-float v15, v15, v16

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-float/2addr v12, v15

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-float v20, v8, v19

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float v9, v4

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

    :goto_7
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-float v15, v15, v21

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_9
    iput-object v12, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_a
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    :goto_c
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move/from16 v4, p1

    nop

    nop

    :goto_e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_10
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_11
    invoke-static {v12}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v12

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    add-float v17, v15, v17

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-float/2addr v12, v4

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-float v4, v13, v7

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
    if-eqz v9, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_16
    if-eqz v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_2
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_17
    iput v15, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_18
    float-to-int v4, v9

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_19
    sub-float/2addr v9, v12

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    float-to-int v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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

    :goto_1c
    mul-float v15, v13, v7

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move/from16 v9, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    int-to-float v12, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_1f
    add-float/2addr v4, v15

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_21
    iget v15, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_22
    iput v12, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

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

    :goto_23
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_26
    iget-object v12, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    goto/32 :goto_11

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

    goto/32 :goto_b

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_29
    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2a
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v6, v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2d
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2e
    move v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_31
    int-to-float v12, v12

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_32
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

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

    :goto_34
    move/from16 v18, v4

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sub-float v13, v11, v12

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

    nop

    :goto_36
    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_37
    move-object/from16 v2, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_38
    div-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3a
    mul-float v21, v11, v14

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3b
    if-nez v6, :cond_3

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0xa

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3d
    iget v14, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_4
    goto/32 :goto_2e

    nop

    nop

    :goto_40
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

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

    :goto_41
    div-float v19, v12, v16

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_42
    float-to-int v4, v4

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

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

    :goto_44
    div-float v21, v21, v16

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

    :goto_45
    move-object/from16 v3, p5

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_46
    mul-float v4, v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_47
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_48
    move-object/from16 v1, p3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_49
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    nop

    :goto_4a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v12, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

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

    :goto_4c
    iput v12, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4d
    int-to-float v15, v15

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_73

    nop

    nop

    :goto_50
    sub-float v15, v15, v21

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_51
    float-to-int v9, v12

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_52
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    nop

    :goto_53
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_54
    float-to-int v15, v15

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

    :goto_55
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_56
    goto :goto_59

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_58

    nop

    nop

    :goto_58
    move/from16 v9, p2

    nop

    nop

    :goto_59
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5a
    float-to-int v4, v9

    nop

    nop

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

    :goto_5b
    const/high16 v16, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_5c
    add-float/2addr v9, v4

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

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

    :goto_5e
    int-to-float v4, v4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_5f
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

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

    :goto_60
    iput v9, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_61
    float-to-int v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_62
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

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

    nop

    :goto_63
    move-object/from16 v5, p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_64
    mul-float/2addr v9, v12

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

    :goto_65
    div-float v8, v8, v16

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_66
    add-float/2addr v8, v11

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

    nop

    :goto_67
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_68
    add-float/2addr v2, v8

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_6c
    float-to-int v4, v12

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_6e
    iget v15, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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

    :goto_6f
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_d

    nop

    nop

    :goto_71
    iget v11, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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

    :goto_72
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move-object/from16 v0, p0

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

    :goto_74
    iput v12, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget v12, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_76
    sub-float v10, v8, v9

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

    :goto_77
    div-float v11, v11, v16

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

    nop

    :goto_78
    int-to-float v15, v9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_79
    move v14, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7a
    iput v14, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget v12, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    int-to-float v4, v4

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

    :goto_7d
    div-float v17, v9, v16

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    sub-float/2addr v4, v15

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

    nop

    :goto_7f
    move/from16 v4, p1

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

    :goto_80
    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_81
    sub-float v11, v2, v17

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_82
    mul-float v21, v10, v6

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_83
    int-to-float v12, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_84
    const/high16 v5, 0x42c80000    # 100.0f

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

    :goto_85
    mul-float v15, v20, v14

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method

.method setBounds(FFFF)V
    .locals 0
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
            "w",
            "h"
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
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_2

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
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

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
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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

.method setDpDt(FF[F[I[D[D)V
    .locals 21
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
            "locationX",
            "locationY",
            "mAnchorDpDt",
            "toUse",
            "deltaData",
            "data"
        }
    .end annotation

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v13, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2
    sub-float v13, v13, p2

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

    :goto_3
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1d

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    const/4 v4, 0x0

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

    :goto_c
    add-float v16, v11, v14

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

    :goto_d
    mul-float v11, v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_e
    add-float v17, v12, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_f
    aput v19, p3, v18

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    mul-float v18, v17, p2

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

    :goto_11
    sub-float v19, v13, p1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_12
    double-to-float v12, v12

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

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_14
    const/4 v5, 0x0

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

    :goto_15
    sub-float v12, v2, v13

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    array-length v12, v0

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

    :goto_18
    if-lt v11, v12, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    :goto_19
    const/4 v11, 0x0

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_2a

    nop

    :pswitch_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    add-float v13, v13, v18

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1d
    mul-float v20, v16, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1e
    mul-float v13, v6, v4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1f
    div-float/2addr v11, v12

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_20
    aput v13, p3, v18

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v10, " dd = "

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aget-wide v12, p5, v11

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    move v2, v12

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

    :goto_25
    add-float v19, v19, v8

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
    add-float v15, v6, v13

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v3, v12

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_28
    const/high16 v7, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_29
    goto :goto_2a

    nop

    nop

    :pswitch_1
    nop

    :goto_2a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    aget v14, v0, v11

    nop

    nop

    packed-switch v14, :pswitch_data_0

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    div-float/2addr v13, v12

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2d
    mul-float/2addr v14, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v0, p4

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

    :goto_2f
    mul-float v19, v19, v11

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_30
    sub-float v11, v1, v11

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_31
    const/4 v1, 0x0

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

    :goto_32
    goto :goto_2a

    nop

    nop

    :pswitch_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_33
    double-to-float v13, v13

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_34
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_35
    move v4, v12

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_36
    const/16 v18, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_37
    add-float v14, v5, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_38
    add-float/2addr v13, v9

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

    :goto_39
    goto/16 :goto_2a

    nop

    nop

    :pswitch_3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    add-float v19, v19, v20

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

    :goto_3b
    mul-float/2addr v15, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3c
    move v1, v12

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

    :goto_3d
    const/4 v9, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_2a

    nop

    :pswitch_4
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v18, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :goto_41
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    aget-wide v13, p6, v11

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

    :goto_43
    const/high16 v12, 0x40000000    # 2.0f

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

    :goto_44
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_45
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

    :goto_46
    mul-float/2addr v13, v12

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method setView(FLandroid/view/View;[I[D[D[DZ)V
    .locals 35
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
            "position",
            "view",
            "toUse",
            "data",
            "slope",
            "cycle",
            "mForceMeasure"
        }
    .end annotation

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_0
    double-to-float v14, v14

    nop

    nop

    nop

    packed-switch v4, :pswitch_data_0

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-array v14, v4, [D

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_2
    aget v12, v4, v2

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_4
    float-to-double v8, v2

    nop

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

    :goto_5
    float-to-double v11, v15

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aget-wide v14, v14, v4

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_7
    sub-int v6, v4, v2

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_8
    float-to-double v4, v13

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v1, p2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_b6

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_e
    float-to-double v2, v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aget-wide v14, p6, v4

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

    :goto_10
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_88

    nop

    :pswitch_1
    goto/32 :goto_f5

    nop

    nop

    :goto_12
    move/from16 v33, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    :goto_13
    move/from16 v30, v5

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr v0, v5

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_18
    add-double/2addr v6, v9

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1b
    float-to-double v10, v8

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_1c
    mul-double/2addr v6, v14

    nop

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

    :goto_1d
    aget v4, v2, v4

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_1e
    sub-int/2addr v4, v15

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_20
    move-object/from16 v27, v14

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_21
    double-to-float v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-float v7, v5, v24

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_88

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_25
    move v13, v2

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

    :goto_26
    move/from16 v6, v17

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

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

    :goto_29
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_2a
    move v5, v2

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v7, v0

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

    :goto_2c
    move v10, v8

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_2d
    if-ge v11, v12, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v17, 0x1

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

    nop

    nop

    :goto_2f
    instance-of v0, v1, Landroidx/constraintlayout/motion/widget/FloatLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_30
    array-length v14, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_31
    move/from16 v21, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_32
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_33
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v3, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_35
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_36
    mul-double/2addr v14, v6

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p6, :cond_2

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    :cond_2
    goto/32 :goto_de

    nop

    nop

    :goto_38
    float-to-double v6, v9

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

    :goto_39
    goto/16 :goto_88

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/high16 v11, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3c
    mul-double/2addr v6, v0

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

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

    nop

    :goto_3e
    float-to-double v10, v5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3f
    div-float v9, v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_40
    cmpl-double v14, v14, v18

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_42
    add-double v18, v18, v14

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_44
    aget-wide v18, v2, v4

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

    :goto_45
    const/16 v19, 0x0

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_46
    add-float v8, v29, v10

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move/from16 v21, v12

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_4b
    float-to-double v6, v5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_fe

    nop

    nop

    :goto_4e
    aget v6, v2, v4

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_4f
    move/from16 v22, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_50
    move/from16 v29, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_51
    float-to-double v14, v11

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_52
    float-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_53
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_54
    const/high16 v0, 0x3f000000    # 0.5f

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

    nop

    :goto_55
    move/from16 v15, p1

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_58
    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_59
    const/high16 v8, 0x40000000    # 2.0f

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

    :goto_5a
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_5c
    aput-wide v11, v3, v19

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_5d
    float-to-double v9, v11

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_5e
    if-lt v4, v15, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move v1, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_60
    double-to-float v0, v11

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_61
    move v7, v2

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_62
    float-to-double v8, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_63
    move v9, v14

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_64
    move/from16 v32, v9

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

    :goto_65
    add-float v3, v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_66
    sub-double/2addr v14, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_67
    move/from16 v11, v24

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_68
    const-wide/16 v18, 0x0

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_69
    move v2, v5

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

    :goto_6a
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_5
    goto/32 :goto_118

    nop

    nop

    :goto_6b
    iput-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_6c
    move-wide/from16 v14, v18

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    float-to-double v11, v13

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_70
    move v10, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_e2

    nop

    nop

    :goto_72
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const/high16 v13, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_74
    move-object/from16 v1, p2

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

    :goto_75
    move v5, v10

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    mul-double/2addr v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_77
    move-wide/from16 v20, v14

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_78
    move v8, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_79
    float-to-double v0, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_7a
    float-to-double v8, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_7b
    sub-double/2addr v10, v14

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_7c
    float-to-double v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_7d
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_7e
    move/from16 v25, v1

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    move-object/from16 v2, p3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_80
    float-to-double v11, v5

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_83
    move/from16 v28, v9

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_cf

    nop

    nop

    :goto_85
    goto/32 :goto_102

    nop

    nop

    :goto_86
    array-length v14, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_87
    move v12, v2

    nop

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_89
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_d4

    nop

    nop

    :goto_8c
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

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

    :goto_8d
    move v11, v14

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_8e
    double-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_8f
    array-length v4, v2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_90
    array-length v4, v2

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_91
    if-nez v2, :cond_6

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :cond_6
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_92
    if-eqz v14, :cond_7

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_93
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :goto_94
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_95
    aget v6, v2, v4

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    move/from16 v18, v11

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

    :goto_97
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_98
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v1, v12, v11}, Landroid/view/View;->measure(II)V

    :goto_9a
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    add-float v6, v16, v33

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

    :goto_9c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    float-to-double v14, v5

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_9e
    sub-int v7, v0, v3

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    move-wide/from16 v20, v14

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    move/from16 v9, v28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_a1
    move v14, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_a4
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_a5
    float-to-double v2, v7

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

    :goto_a6
    const/4 v12, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a7
    const/16 v17, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_a8
    float-to-double v14, v2

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_a9
    move v10, v15

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_aa
    if-nez p6, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_ab
    aget v0, v14, v19

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_ac
    move/from16 v16, v4

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    aget-wide v18, p4, v4

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_ae
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_81

    nop

    :goto_af
    sub-int/2addr v4, v15

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_b1
    move v5, v14

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_b2
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    move/from16 v14, v25

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_b4
    invoke-virtual {v2, v11, v12, v4, v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    const/16 v19, 0x0

    nop

    nop

    :goto_b6
    goto/32 :goto_b7

    nop

    nop

    :goto_b7
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

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

    :goto_b8
    float-to-double v11, v14

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_b9
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    nop

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

    :goto_ba
    aget v4, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_bb
    move/from16 v5, v30

    nop

    :goto_bc
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_be
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    aput-wide v11, v3, v17

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_c2
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-nez v14, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_c4
    if-eq v6, v10, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :cond_b
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_c5
    move/from16 v17, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_c6
    add-float v2, v16, v0

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

    :goto_c7
    move/from16 v28, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c8
    add-float v0, v0, v24

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_c9
    move/from16 v30, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_ca
    aget-wide v18, v2, v4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    move/from16 v20, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_cc
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    const/4 v15, 0x1

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

    :goto_ce
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_140

    nop

    nop

    nop

    :goto_d0
    move/from16 v23, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_d1
    add-double/2addr v11, v0

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

    :goto_d2
    aget v11, v4, v2

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_d3
    move/from16 v8, v29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_d5
    float-to-double v6, v2

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    const/4 v15, 0x2

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_d7
    add-float v4, v16, v0

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    float-to-double v11, v0

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

    nop

    :goto_d9
    move v8, v7

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

    :goto_da
    const/16 v17, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_db
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

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

    nop

    nop

    :goto_dc
    const/16 v19, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_dd
    aget-wide v14, v14, v4

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

    :goto_de
    aget-wide v18, p6, v4

    nop

    nop

    :goto_df
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    float-to-double v10, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    move/from16 v16, v4

    nop

    :goto_e2
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_e3
    float-to-double v11, v6

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    float-to-double v6, v4

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

    :goto_e5
    const/4 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_e6
    sub-double/2addr v10, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_e7
    if-ne v7, v10, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    :cond_c
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_e8
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e9
    aput-wide v18, v5, v6

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    const/4 v4, 0x0

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

    :goto_eb
    add-double/2addr v9, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_ec
    move-object/from16 v1, p2

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

    nop

    :goto_ed
    mul-double/2addr v9, v11

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_ee
    float-to-double v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_ef
    new-array v14, v15, [F

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

    :goto_f0
    move/from16 v31, v11

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

    :goto_f1
    div-float v10, v23, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_f2
    move/from16 v33, v6

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    move v6, v2

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_f4
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    nop

    :goto_f5
    move v15, v2

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_f6
    array-length v5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_f7
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_f8
    goto/16 :goto_bc

    nop

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_fa
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_fb
    move-object v3, v1

    nop

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

    nop

    :goto_fc
    if-lt v4, v5, :cond_d

    nop

    goto/32 :goto_be

    nop

    nop

    :cond_d
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    div-float v8, v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_fe
    move/from16 v20, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_ff
    move v9, v6

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_100
    float-to-double v9, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_101
    const/16 v19, 0x0

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_102
    move/from16 v15, v19

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_103
    const/4 v8, 0x0

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

    :goto_104
    const/4 v2, 0x1

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

    :goto_105
    if-eqz v10, :cond_e

    nop

    goto/32 :goto_12e

    nop

    :cond_e
    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    :goto_107
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_108
    move/from16 v34, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_109
    goto/16 :goto_88

    nop

    nop

    :pswitch_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    check-cast v3, Landroidx/constraintlayout/motion/widget/FloatLayout;

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    float-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_10c
    iput-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_10d
    if-nez v14, :cond_f

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

    :cond_f
    goto/32 :goto_b9

    nop

    nop

    :goto_10e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_10f
    float-to-double v14, v11

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_110
    move/from16 v25, v9

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_111
    float-to-int v4, v4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_112
    double-to-float v8, v10

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

    :goto_113
    if-eqz v11, :cond_10

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_10
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_114
    mul-double/2addr v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_115
    if-le v14, v4, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    :cond_11
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    move/from16 v24, v8

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

    nop

    nop

    :goto_117
    array-length v15, v14

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_118
    move/from16 v0, v16

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

    :goto_119
    double-to-float v9, v14

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    move/from16 v34, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_11b
    add-double/2addr v2, v4

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

    :goto_11c
    aget v4, v14, v17

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11d
    move-wide/from16 v14, v18

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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

    :goto_11f
    float-to-double v9, v2

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    :goto_120
    sub-double/2addr v6, v9

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_121
    move/from16 v23, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_122
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_123
    aget-wide v18, v3, v4

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_125
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_126
    add-double/2addr v9, v6

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    array-length v11, v3

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

    :goto_128
    move/from16 v2, v16

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    const/4 v12, 0x0

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    move-object/from16 v2, p3

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    double-to-float v0, v9

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    if-nez p7, :cond_12

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :cond_12
    :goto_12e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_12f
    double-to-float v2, v14

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

    :goto_130
    const/16 v17, 0x1

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    add-double/2addr v4, v6

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_132
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_133
    move/from16 v16, v15

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_134
    move/from16 v24, v7

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_135
    move/from16 v22, v11

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

    :goto_136
    move/from16 v29, v8

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_137
    invoke-interface {v3, v0, v2, v6, v7}, Landroidx/constraintlayout/motion/widget/FloatLayout;->layout(FFFF)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_138
    move/from16 v23, v10

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    new-array v4, v15, [F

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_13a
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_13b
    const/high16 v8, 0x40000000    # 2.0f

    nop

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

    :goto_13c
    add-int/2addr v4, v15

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    new-array v14, v4, [D

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_13e
    add-double/2addr v14, v8

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

    :goto_13f
    aput-wide v18, v5, v6

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_140
    move/from16 v15, v17

    nop

    :goto_141
    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_142
    move v15, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_143
    move/from16 v25, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_144
    move/from16 v16, v32

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

    :goto_145
    mul-double/2addr v14, v8

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_146
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    :goto_147
    move-object/from16 v26, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_148
    float-to-double v11, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_149
    move/from16 v24, v7

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    mul-double/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_14b
    add-float v9, v28, v11

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14c
    div-float v11, v22, v2

    nop

    goto/32 :goto_14b

    nop

    nop

    :goto_14d
    add-float v4, v4, v33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_14e
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop
.end method

.method public setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mc",
            "relative"
        }
    .end annotation

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    :goto_2
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

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

    :goto_3
    iget v4, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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

    :goto_4
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6
    iget v1, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7
    sub-float/2addr v3, v4

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

    :goto_8
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

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

    :goto_b
    div-float/2addr v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    div-float/2addr v4, v2

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

    :goto_d
    float-to-double v2, v3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sub-float/2addr v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_f
    iget v4, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sub-float/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
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

    nop

    :goto_12
    iget v1, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

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

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    float-to-double v4, v4

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
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

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

    :goto_19
    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1a
    add-float/2addr v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    const/high16 v2, 0x40000000    # 2.0f

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

    :goto_1d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_1e
    double-to-float v4, v4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_20
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_21
    goto/16 :goto_1

    nop

    :goto_22
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_23
    double-to-float v4, v4

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

    :goto_24
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_25
    add-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_26
    add-double/2addr v4, v6

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
    add-int v0, v0, v1

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

    :goto_28
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

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

    :goto_29
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2a
    sub-float/2addr v0, v1

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

    :goto_2b
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    double-to-float v4, v4

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

    :goto_2e
    float-to-double v0, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_14

    nop

    :goto_30
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_31
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop
.end method
