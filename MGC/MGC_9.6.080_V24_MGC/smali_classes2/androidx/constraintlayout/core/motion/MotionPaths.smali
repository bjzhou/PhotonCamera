.class public Landroidx/constraintlayout/core/motion/MotionPaths;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/core/motion/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field public static final CARTESIAN:I = 0x0

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field public static final PERPENDICULAR:I = 0x1

.field public static final SCREEN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field customAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
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

.field mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "y"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    :goto_4
    const-string v5, "pathRotate"

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
    sput-object v0, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

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
    const-string v3, "width"

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

    :goto_7
    const-string v4, "height"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const v1, 0x1e

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "x"

    nop

    goto/32 :goto_0

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

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "position"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

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
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    :goto_0
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_3
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

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

    :goto_7
    new-array v0, v0, [D

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
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

    nop

    nop

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    const/4 v2, -0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    new-array v1, v0, [D

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v0, 0x12

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

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

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

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

    :goto_16
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

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

    :goto_17
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_19

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

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

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop
.end method

.method public constructor <init>(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/high16 v1, 0x7fc00000    # Float.NaN

    nop

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

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1a

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
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

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

    :goto_4
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

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

    :goto_7
    const/16 v0, 0x12

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->initScreen(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    const/4 v2, -0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

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

    :goto_10
    new-array v0, v0, [D

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    new-array v1, v0, [D

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

    :goto_13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ljava/util/HashMap;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :goto_18
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne v0, v2, :cond_0

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

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->initPath(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    :goto_1e
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->initCartesian(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    :goto_20
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :pswitch_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_29

    nop

    :goto_24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_25
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->initPolar(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    :pswitch_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_27
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_28
    goto/32 :goto_18

    nop

    :goto_29
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private b8a548655f7eae060a58306fa7eed2d2m(FF)Z
    .locals 4

    goto/32 :goto_15

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

    :goto_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    cmpl-float v0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    return v1

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_1

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
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
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
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

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v1, v2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v0, v3, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    move v1, v2

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v3, 0x358637bd    # 1.0E-6f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    :goto_17
    goto/32 :goto_1a

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    if-gtz v0, :cond_4

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

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_20
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    sub-float v0, p1, p2

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

    :goto_22
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_23
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop
.end method

.method private static final xRotate(FFFFFF)F
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x15

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

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-float/2addr v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-float v1, p5, p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
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

    nop

    :goto_9
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    mul-float v0, p4, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-float/2addr v0, p2

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

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_d
    sub-float/2addr p5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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
    sub-float/2addr p4, p2

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

.method private static final yRotate(FFFFFF)F
    .locals 2

    goto/32 :goto_c

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
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    add-float/2addr v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    sub-float/2addr p5, p3

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
    const v1, 0xd

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

    :goto_7
    sub-float/2addr p4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    mul-float v1, p5, p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    mul-float v0, p4, p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 6

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v3, Ljava/lang/String;

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

    :goto_8
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->mProgress:F

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

    :goto_c
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_e
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    goto/32 :goto_31

    nop

    nop

    :goto_10
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

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

    :goto_11
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_12
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1e

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
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/CustomVariable;->isContinuous()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateRelativeTo:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateCircleAngleTo:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1e
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateCircleAngleTo:I

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

    :goto_1f
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathMotionArc:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    if-nez v4, :cond_2

    nop

    nop

    goto/32 :goto_f

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

    :goto_21
    if-nez v3, :cond_3

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    :goto_22
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_23
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

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

    :goto_25
    iget-object v1, v1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttributeNames()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2a
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2c
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

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

    :goto_2d
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mDrawPath:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

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

    :goto_30
    add-int v0, v0, v1

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

    :goto_31
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public compareTo(Landroidx/constraintlayout/core/motion/MotionPaths;)I
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    :goto_4
    goto/32 :goto_b

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

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

    :goto_a
    const v0, 0x11

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->compareTo(Landroidx/constraintlayout/core/motion/MotionPaths;)I

    move-result p1

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

    :goto_2
    return p1

    nop

    nop
.end method

.method public configureRelativeTo(Landroidx/constraintlayout/core/motion/Motion;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xd

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    float-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->getPos(D)[D

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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
.end method

.method different(Landroidx/constraintlayout/core/motion/MotionPaths;[Z[Ljava/lang/String;Z)V
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v3, v0, 0x1

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

    :goto_1
    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionPaths;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v1

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

    :goto_2
    or-int/2addr v5, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3
    aget-boolean v4, p2, v3

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

    :goto_4
    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5
    or-int v5, v1, v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v5, v6}, Landroidx/constraintlayout/core/motion/MotionPaths;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v6, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v5, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

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

    :goto_e
    const v0, 0x19

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    iget v6, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10
    iget v5, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    iget v6, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

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

    :goto_13
    or-int v5, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    or-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_15
    or-int/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    invoke-direct {p0, v5, v6}, Landroidx/constraintlayout/core/motion/MotionPaths;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    or-int/2addr v4, v5

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

    :goto_18
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1a
    add-int/lit8 v0, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    aput-boolean v4, p2, v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget-boolean v4, p2, v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aget-boolean v4, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x17

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v3, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v3, v0, 0x1

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

    :goto_22
    aput-boolean v4, p2, v3

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

    :goto_23
    invoke-direct {p0, v5, v6}, Landroidx/constraintlayout/core/motion/MotionPaths;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v5

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

    :goto_24
    or-int/2addr v4, v5

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

    :goto_25
    add-int/lit8 v0, v3, 0x1

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

    :goto_26
    or-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_27
    or-int/2addr v5, p4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_29
    aput-boolean v4, p2, v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2a
    aget-boolean v4, p2, v3

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

    :goto_2b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2c
    iget v5, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2e
    aget-boolean v4, p2, v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aput-boolean v4, p2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_30
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aput-boolean v4, p2, v0

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
.end method

.method fillStandard([D[I)V
    .locals 6

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aput-wide v4, p1, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    float-to-double v4, v4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v2, v3, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    aget v4, p2, v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput v1, v0, v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_9
    aput v1, v0, v2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    new-array v0, v0, [F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    move v1, v3

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    :goto_10
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aget v4, v0, v4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1b
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1c
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    aput v1, v0, v2

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

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_20
    const/4 v2, 0x0

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

    :goto_21
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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
    const/4 v2, 0x1

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

    :goto_24
    goto/32 :goto_1

    nop

    nop

    :goto_25
    add-int/lit8 v3, v1, 0x1

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

    :goto_26
    const v1, 0x3

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
    if-lt v3, v4, :cond_2

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

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aget v3, p2, v2

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_29
    const/4 v2, 0x2

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

    :goto_2a
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2b
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    array-length v4, v0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2f
    array-length v3, p2

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
.end method

.method getBounds([I[D[FI)V
    .locals 9

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    array-length v7, p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2
    move v2, v7

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

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x18

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move v0, v7

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_8

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2

    nop

    nop

    :goto_c
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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
    move v3, v7

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

    :goto_e
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    move v1, v7

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

    :goto_10
    double-to-float v7, v7

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

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_8

    nop

    nop

    :pswitch_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    add-int/lit8 v6, p4, 0x1

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

    :goto_18
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_7

    nop

    nop

    :goto_19
    aput v3, p3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    aget-wide v7, p2, v6

    nop

    goto/32 :goto_10

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

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

    :goto_1d
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1f
    add-int/lit8 v6, v6, 0x1

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

    :goto_20
    goto/16 :goto_14

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    :goto_22
    if-lt v6, v7, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_23
    aget v8, p1, v6

    nop

    nop

    packed-switch v8, :pswitch_data_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

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

    :goto_25
    aput v2, p3, p4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method getCenter(D[I[D[FI)V
    .locals 19

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_0
    float-to-double v11, v1

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
    sub-double/2addr v9, v11

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_3
    goto/32 :goto_d

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    move/from16 v18, v2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_7
    move v4, v9

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

    :goto_8
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_38

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v1, p6, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_d
    goto/32 :goto_43

    nop

    nop

    :goto_e
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_f
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    float-to-double v11, v2

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

    :goto_11
    add-double/2addr v9, v0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    div-float v0, v5, v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_13
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    double-to-float v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    aput v0, p5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    move v3, v9

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_18
    new-array v10, v10, [F

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1a
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

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

    :goto_1c
    double-to-float v1, v9

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

    :goto_1d
    div-float v1, v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v7, 0x0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v10, 0x2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    double-to-float v9, v9

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_21
    sub-double/2addr v9, v11

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

    :goto_22
    array-length v9, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-array v11, v10, [F

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

    :goto_24
    sub-double/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_3b

    nop

    nop

    :pswitch_0
    goto/32 :goto_4e

    nop

    nop

    :goto_26
    invoke-virtual {v8, v12, v13, v11, v10}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aget v14, v11, v14

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_28
    move v2, v13

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

    :goto_29
    move/from16 v16, v3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2a
    move-object/from16 v17, v10

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

    :goto_2b
    mul-double/2addr v11, v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v14, 0x1

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

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v16, v11

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2f
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_30
    float-to-double v0, v2

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_31
    move v15, v2

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

    :goto_32
    float-to-double v9, v14

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_33
    div-float v1, v4, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_34
    float-to-double v11, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_35
    aget v10, v1, v8

    nop

    nop

    nop

    packed-switch v10, :pswitch_data_0

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_36
    aput v1, p5, p6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v8, 0x0

    nop

    :goto_38
    goto/32 :goto_22

    nop

    nop

    :goto_39
    mul-double/2addr v0, v11

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3a
    move v2, v9

    nop

    nop

    :goto_3b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto :goto_3b

    nop

    :pswitch_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_3b

    nop

    nop

    :pswitch_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3e
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3f
    add-float/2addr v0, v7

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-lt v8, v9, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_48

    nop

    nop

    :goto_41
    const/high16 v0, 0x40000000    # 2.0f

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_42
    move/from16 v18, v2

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_44
    goto :goto_4c

    nop

    nop

    :goto_45
    goto/32 :goto_42

    nop

    nop

    :goto_46
    move v13, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-float/2addr v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_48
    aget-wide v9, p4, v8

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

    :goto_49
    add-float/2addr v0, v3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v8, :cond_2

    nop

    goto/32 :goto_45

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4b
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4d
    float-to-double v0, v15

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4e
    move v5, v9

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object/from16 v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_50
    aget v8, v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_51
    move-wide/from16 v12, p1

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

    :goto_52
    add-float/2addr v1, v2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move/from16 v2, v16

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

    :goto_54
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_56
    const v1, 0x1e

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

    :goto_57
    div-float v1, v4, v0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_58
    float-to-double v11, v15

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

    :goto_59
    const/high16 v0, 0x40000000    # 2.0f

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

    :goto_5a
    float-to-double v9, v8

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method getCenter(D[I[D[F[D[F)V
    .locals 31

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_1
    move/from16 v2, v25

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_b

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4
    aget v15, v0, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    move/from16 v25, v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v11, 0x0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_b

    nop

    :pswitch_1
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_8
    div-float v0, v5, v0

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    float-to-double v13, v9

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_a
    move v6, v14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :goto_d
    goto/32 :goto_9e

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_f
    float-to-double v6, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_10
    move v7, v14

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

    :goto_11
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    div-float v9, v4, v8

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

    :goto_13
    mul-double/2addr v0, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_14
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_16
    if-nez v15, :cond_0

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

    :cond_0
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_17
    move/from16 v20, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_18
    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_19
    float-to-double v7, v2

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget v1, v0, v17

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    invoke-virtual {v15, v8, v9, v0, v12}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_50

    nop

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

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move/from16 v21, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_20
    move/from16 v25, v2

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

    :goto_21
    move/from16 v19, v8

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move/from16 v22, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v10, 0x0

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

    :goto_24
    sub-double/2addr v6, v13

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_25
    double-to-float v14, v7

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aput v14, p7, v17

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_27
    const/4 v8, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_28
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-double/2addr v7, v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    float-to-double v0, v12

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2b
    move v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_2c
    move/from16 v3, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_2d
    double-to-float v13, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_2e
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_2f
    add-double/2addr v7, v13

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

    nop

    :goto_30
    move/from16 v29, v14

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_99

    nop

    nop

    :goto_32
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    float-to-double v0, v12

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_34
    double-to-float v6, v13

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_35
    add-float/2addr v14, v7

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_37
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

    :goto_38
    move/from16 v22, v6

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-float/2addr v0, v11

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget v2, v12, v17

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

    :goto_3b
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_3c
    float-to-double v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_3d
    float-to-double v8, v3

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

    :goto_3e
    move-object/from16 v24, v0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move/from16 v19, v8

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-float/2addr v13, v6

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_41
    aget-wide v13, p4, v12

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

    :goto_42
    aget v0, v12, v16

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_43
    const/16 v17, 0x1

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

    :goto_44
    const/high16 v6, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_45
    float-to-double v14, v9

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move/from16 v23, v15

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_47
    add-float/2addr v1, v10

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_48
    float-to-double v13, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_49
    mul-double/2addr v14, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_4a
    move/from16 v28, v3

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

    :goto_4b
    const/4 v12, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_4c
    move/from16 v26, v6

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4d
    div-float v13, v8, v12

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4e
    goto/16 :goto_31

    nop

    nop

    :goto_4f
    goto/32 :goto_20

    nop

    nop

    :goto_50
    const/high16 v12, 0x40000000    # 2.0f

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

    :goto_51
    float-to-double v14, v13

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_52
    add-double/2addr v6, v8

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

    :goto_53
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_54
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_75

    nop

    :goto_55
    add-int v0, v0, v1

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_56
    move/from16 v12, v21

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_57
    float-to-double v0, v12

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    sub-double/2addr v7, v14

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_59
    move/from16 v9, v22

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5a
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_85

    nop

    nop

    :goto_5c
    move/from16 v13, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_5d
    move v8, v14

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5e
    mul-double/2addr v8, v6

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

    :goto_5f
    goto/16 :goto_b

    nop

    :pswitch_3
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_60
    move/from16 v23, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_61
    div-float v7, v5, v6

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

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

    nop

    :goto_63
    add-float/2addr v1, v2

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

    :goto_64
    add-float/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_65
    double-to-float v0, v7

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move v2, v13

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_67
    div-float v1, v4, v0

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

    :goto_68
    new-array v0, v12, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v6, 0x0

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_6a
    sub-double/2addr v13, v8

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

    :goto_6b
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_6c
    move/from16 v18, v9

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_6d
    div-float v14, v9, v12

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_6e
    double-to-float v14, v14

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

    :goto_6f
    float-to-double v13, v1

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

    :goto_70
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_71
    move v5, v13

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    float-to-double v6, v15

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_73
    aget v15, v1, v12

    nop

    packed-switch v15, :pswitch_data_0

    goto/32 :goto_5f

    nop

    nop

    :goto_74
    new-array v12, v12, [F

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

    :goto_75
    goto/32 :goto_d

    nop

    nop

    :goto_76
    goto/32 :goto_14

    nop

    nop

    :goto_77
    move/from16 v27, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_78
    const v1, 0x4

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

    :goto_79
    move-wide/from16 v8, p1

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

    :goto_7a
    mul-double/2addr v13, v0

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

    :goto_7b
    move/from16 v29, v14

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

    :goto_7c
    float-to-double v6, v7

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_7d
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    move-object/from16 v20, v12

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

    nop

    :goto_7f
    move/from16 v21, v13

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_80
    move v4, v13

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_81
    move/from16 v25, v6

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

    :goto_82
    mul-double/2addr v0, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_83
    const/high16 v8, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_84
    move v9, v14

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_85
    array-length v13, v1

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_86
    move/from16 v21, v3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_87
    move/from16 v21, v13

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_88
    double-to-float v6, v6

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_89
    sub-double/2addr v13, v6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_8a
    move/from16 v13, v21

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    move v3, v13

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

    :goto_8c
    move-object/from16 v1, p3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8d
    add-double/2addr v7, v0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_8e
    float-to-double v0, v12

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    move/from16 v28, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_90
    if-lt v12, v13, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move/from16 v30, v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_92
    float-to-double v13, v12

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_93
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_94
    float-to-double v8, v3

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_95
    aput v13, p7, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_96
    aput v1, p5, v16

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    float-to-double v14, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_98
    aput v0, p5, v17

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

    :goto_99
    const/high16 v0, 0x40000000    # 2.0f

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

    :goto_9a
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_9b
    move/from16 v26, v6

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_9c
    mul-double/2addr v8, v13

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    aget-wide v14, p6, v12

    nop

    nop

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

    :goto_9e
    goto/32 :goto_76

    nop

    nop

    nop
.end method

.method getCenterVelocity(D[I[D[FI)V
    .locals 19

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-array v10, v10, [F

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    move/from16 v16, v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    float-to-double v11, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    sub-double/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    div-float v0, v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    move v5, v9

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

    :goto_7
    add-int/lit8 v8, v8, 0x1

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

    :goto_8
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    move v4, v9

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v8, :cond_0

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

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v17, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_d
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_e
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    add-float/2addr v0, v3

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

    :goto_10
    add-int/lit8 v1, p6, 0x1

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

    :goto_11
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    sub-double/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_13
    array-length v9, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    move-object/from16 v16, v11

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v6, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    float-to-double v11, v1

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

    nop

    :goto_18
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1c
    double-to-float v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    :goto_1e
    div-float v1, v4, v0

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

    :goto_1f
    mul-double/2addr v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_20
    move/from16 v18, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_21
    add-float/2addr v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    aput v0, p5, v1

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

    :goto_23
    move-object/from16 v1, p3

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_24
    float-to-double v9, v14

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_25
    goto/16 :goto_50

    nop

    nop

    :goto_26
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

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

    :goto_28
    move/from16 v18, v2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_9

    nop

    nop

    :goto_2b
    move v13, v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2c
    if-lt v8, v9, :cond_2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2d
    float-to-double v0, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2e
    move/from16 v2, v16

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-double/2addr v9, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_30
    float-to-double v11, v15

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

    :goto_31
    float-to-double v9, v8

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_32
    move v15, v2

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

    :goto_33
    div-float v1, v4, v0

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

    :goto_34
    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_35
    float-to-double v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_36
    add-float/2addr v1, v2

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

    nop

    :goto_37
    double-to-float v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_39
    add-float/2addr v1, v6

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v8, v12, v13, v11, v10}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v10, 0x2

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

    :goto_3d
    const v0, 0x17

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

    :goto_3e
    aget v10, v1, v8

    nop

    nop

    nop

    nop

    packed-switch v10, :pswitch_data_0

    goto/32 :goto_54

    nop

    nop

    :goto_3f
    double-to-float v9, v9

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_42
    mul-double/2addr v11, v0

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :goto_44
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_45
    aget-wide v9, p4, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_46
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_48
    const/high16 v0, 0x40000000    # 2.0f

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    aget v8, v11, v8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4a
    div-float v1, v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_4b
    move v2, v9

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_2a

    nop

    nop

    :goto_4e
    aget v14, v11, v14

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_51
    aput v1, p5, p6

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_52
    add-int v0, v0, v1

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

    :goto_53
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_54
    goto :goto_4c

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_56
    move v2, v13

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_57
    sub-double/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_58
    move-wide/from16 v12, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_59
    new-array v11, v10, [F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5a
    const v1, 0x1f

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

    :goto_5b
    float-to-double v11, v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .locals 7

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    new-array v2, v1, [F

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

    :goto_1
    add-int/lit8 v3, v3, 0x1

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

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

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

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    :goto_4
    aput-wide v5, p2, p3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

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

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
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

    nop

    nop

    :goto_9
    const v0, 0x5

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
    return v1

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v4, p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v1

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

    :goto_10
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x19

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

    :goto_13
    if-eq v1, v2, :cond_2

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

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_15
    float-to-double v3, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    :goto_1a
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    float-to-double v5, v5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    if-lt v3, v1, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aput-wide v3, p2, p3

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

    :goto_1f
    aget v5, v2, v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_20
    return v2

    nop

    nop

    :goto_21
    goto/32 :goto_24

    nop

    nop

    :goto_22
    move p3, v4

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

    :goto_23
    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

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

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    return v1

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
    add-int v0, v0, v1

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

    :goto_3
    const v1, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

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

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

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

    :goto_6
    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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
    return v1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method getRect([I[D[FI)V
    .locals 41

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move/from16 v21, v4

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    cmpl-float v27, v11, v26

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sub-float v28, v6, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_4
    float-to-double v6, v2

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v3, v8

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    array-length v8, v1

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v22, 0x0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_8
    float-to-double v9, v3

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_9
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

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

    :goto_a
    goto/16 :goto_d7

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/core/motion/MotionPaths;->yRotate(FFFFFF)F

    move-result v26

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_d
    sub-float v22, v20, v26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_e
    add-float/2addr v0, v15

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

    :goto_f
    div-float v2, v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_10
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    goto/16 :goto_c5

    nop

    nop

    :pswitch_0
    goto/32 :goto_2a

    nop

    nop

    :goto_12
    move/from16 v21, v3

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_13
    goto/16 :goto_c5

    nop

    nop

    :pswitch_1
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move/from16 v30, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_15
    add-float v20, v20, v16

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_16
    move/from16 v19, v9

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_17
    div-float v24, v4, v22

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_18
    add-float v9, v3, v5

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_1a
    const/high16 v22, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    const/high16 v1, 0x40000000    # 2.0f

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x5

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_1d
    div-float v27, v27, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_1e
    mul-double/2addr v1, v6

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1f
    sub-double/2addr v7, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_20
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :goto_21
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_22
    move/from16 v6, v35

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

    :goto_23
    double-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_24
    move v8, v6

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

    nop

    :goto_25
    sub-float v22, v9, v26

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_26
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_27
    move/from16 v2, v21

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

    :goto_28
    move/from16 v31, v20

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-double/2addr v8, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2a
    move v2, v8

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2b
    add-float v25, v1, v26

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move/from16 v26, v3

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sub-double/2addr v7, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2f
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/core/motion/MotionPaths;->xRotate(FFFFFF)F

    move-result v39

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move/from16 v2, v21

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move/from16 v19, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_32
    aget v9, v1, v6

    nop

    packed-switch v9, :pswitch_data_0

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_33
    move v7, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v9}, Landroidx/constraintlayout/core/motion/Motion;->getCenterY()F

    move-result v9

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move/from16 v30, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_36
    move/from16 v22, v2

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

    :goto_37
    float-to-double v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_38
    move v10, v0

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_39
    add-int/lit8 v3, p4, 0x1

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_3a
    double-to-float v1, v7

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move/from16 v10, v39

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3c
    div-float v25, v5, v22

    nop

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

    :goto_3d
    sub-float v26, v9, v1

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

    :goto_3e
    move v1, v3

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_3f
    move/from16 v20, v26

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_40
    cmpl-float v22, v21, v22

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_41
    add-int/lit8 v4, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move/from16 v30, v10

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

    :goto_43
    move/from16 v8, v18

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_21

    nop

    nop

    :goto_45
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_47
    add-float v1, v1, v16

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

    nop

    :goto_48
    goto/16 :goto_c5

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_ce

    nop

    nop

    :goto_49
    aput v20, p3, v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4a
    aput v7, p3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_4b
    move/from16 v21, v7

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

    :goto_4c
    add-int/lit8 v4, v3, 0x1

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_4d
    move/from16 v33, v5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4e
    mul-float v22, v22, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move/from16 v23, v10

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_50
    const/high16 v12, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/core/motion/MotionPaths;->xRotate(FFFFFF)F

    move-result v35

    nop

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

    :goto_52
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_53
    move/from16 v24, v3

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

    :goto_54
    add-int/lit8 v3, v4, 0x1

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_55
    const/4 v15, 0x0

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int/lit8 v3, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_57
    move/from16 v31, v9

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_58
    move/from16 v1, v34

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_59
    move/from16 v20, v2

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_5a
    move/from16 v40, v17

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_5b
    move/from16 v30, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_5c
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/core/motion/MotionPaths;->yRotate(FFFFFF)F

    move-result v38

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

    :goto_5d
    goto/16 :goto_c5

    nop

    nop

    :pswitch_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move/from16 v6, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_5f
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_60
    sub-float v28, v8, v27

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move/from16 v32, v3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_62
    move/from16 v21, v7

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

    :goto_63
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/core/motion/MotionPaths;->yRotate(FFFFFF)F

    move-result v34

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_64
    add-float/2addr v6, v15

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_65
    add-float v6, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_66
    double-to-float v3, v3

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_67
    mul-float v26, v26, v14

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_68
    mul-float v26, v26, v13

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

    :goto_69
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_6b
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_6c
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_6d
    const/high16 v13, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_6e
    sub-float v26, v6, v0

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

    :goto_6f
    mul-float v22, v22, v12

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_70
    float-to-double v7, v6

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_71
    move/from16 v33, v5

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

    :goto_72
    float-to-double v1, v0

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

    :goto_73
    sub-float v28, v0, v27

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_74
    move v9, v8

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    cmpl-float v26, v12, v26

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_76
    sub-float v22, v1, v26

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

    :goto_77
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_78
    move/from16 v2, v20

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_79
    move/from16 v20, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_7a
    float-to-double v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_7b
    add-float v26, v1, v9

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_7c
    add-float v7, v7, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_7d
    move v4, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_7e
    const/high16 v14, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_7f
    move/from16 v31, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_80
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

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

    :goto_81
    float-to-double v8, v6

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_82
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-nez v22, :cond_0

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    :goto_84
    mul-float v28, v28, v11

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_85
    move v9, v2

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_86
    add-float v1, v22, v26

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_87
    move v0, v5

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

    :goto_88
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/core/motion/MotionPaths;->xRotate(FFFFFF)F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_89
    aput v6, p3, v4

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    float-to-double v6, v3

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_8b
    add-float v7, v22, v26

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

    :goto_8c
    invoke-virtual {v6}, Landroidx/constraintlayout/core/motion/Motion;->getCenterX()F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_44

    nop

    :goto_8e
    move/from16 v17, v6

    nop

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

    :goto_8f
    aput v10, p3, v4

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_90
    const/16 v16, 0x0

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move/from16 v18, v8

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

    :goto_92
    move/from16 v23, v10

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move/from16 v0, v20

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

    :goto_95
    if-nez v6, :cond_2

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_96
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_97
    sub-float v28, v10, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_98
    add-float v27, v0, v6

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_99
    add-float v0, v28, v27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9a
    float-to-double v4, v2

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_9b
    move/from16 v24, v3

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_9c
    mul-float v28, v28, v11

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_9d
    add-float v25, v1, v25

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    aget-wide v8, p2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/16 v17, 0x0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-lt v6, v8, :cond_3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_a1
    move/from16 v32, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_a2
    goto/16 :goto_93

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_59

    nop

    nop

    :goto_a4
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/core/motion/MotionPaths;->xRotate(FFFFFF)F

    move-result v37

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    sub-double/2addr v8, v6

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    move/from16 v31, v1

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_a7
    move/from16 v9, v19

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a8
    aput v1, p3, v3

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

    :goto_a9
    move/from16 v22, v2

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

    nop

    :goto_aa
    move/from16 v9, v38

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    float-to-double v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_ac
    mul-double/2addr v1, v9

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_ad
    move/from16 v23, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_ae
    const v1, 0x19

    nop

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

    :goto_af
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 v8, 0x0

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

    :goto_b2
    sub-float v22, v7, v26

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_b3
    goto/16 :goto_c5

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    move/from16 v25, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_b5
    div-float v2, v4, v1

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

    :goto_b6
    add-float/2addr v10, v15

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b7
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_b8
    aput v9, p3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

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

    :goto_ba
    if-eqz v26, :cond_4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_4
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    const/high16 v26, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    move/from16 v28, v24

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    add-float v8, v28, v27

    nop

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

    :goto_be
    aput v8, p3, v4

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

    :goto_bf
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c0
    const/high16 v22, 0x40000000    # 2.0f

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    add-float v24, v0, v24

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_c2
    add-float v6, v28, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_c3
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    move/from16 v17, v9

    nop

    :goto_c5
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    aput v0, p3, p4

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_c7
    move/from16 v20, v9

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

    :goto_c8
    const/high16 v22, 0x40000000    # 2.0f

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_ca
    if-eqz v26, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    :cond_5
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_cb
    double-to-float v2, v8

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_cd
    add-float v9, v22, v26

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_ce
    move v5, v8

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    add-float v24, v0, v26

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    goto/32 :goto_52

    nop

    nop

    :goto_d1
    add-int/lit8 v3, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_d2
    move/from16 v20, v2

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d3
    add-float v20, v22, v26

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    div-float v26, v26, v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_d6
    move/from16 v6, v40

    nop

    nop

    :goto_d7
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_d8
    add-float/2addr v8, v15

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_d9
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/core/motion/MotionPaths;->yRotate(FFFFFF)F

    move-result v36

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_da
    move/from16 v21, v4

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_db
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    add-int/lit8 v4, v3, 0x1

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

    :goto_dd
    move/from16 v29, v25

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_de
    move/from16 v27, v4

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_df
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

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

    :goto_e0
    move/from16 v8, v37

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    if-nez v27, :cond_6

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    mul-float v22, v22, v12

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_e3
    const/high16 v11, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_e4
    if-nez v26, :cond_7

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :cond_7
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    double-to-float v8, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_e6
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_e7
    add-int/lit8 v4, v3, 0x1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_e8
    mul-float v28, v28, v11

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

    :goto_e9
    move/from16 v7, v36

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    move v3, v1

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_eb
    goto/32 :goto_45

    nop

    nop

    :goto_ec
    add-float v9, v9, v16

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    add-float v10, v28, v27

    nop

    nop

    nop

    nop

    :goto_ee
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_ef
    mul-float v28, v28, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    mul-float v22, v22, v12

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_f1
    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop
.end method

.method hasCustomData(Ljava/lang/String;)Z
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

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

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

    nop

    nop
.end method

.method initCartesian(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 22

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x11

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

    :goto_1
    sub-float v2, v2, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_2
    int-to-float v2, v2

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

    :goto_3
    iget v3, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_4
    div-float v11, v11, v16

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_5
    div-float v21, v21, v16

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    move-object/from16 v6, p0

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

    :goto_7
    sub-float v2, v2, v21

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_8
    iput v2, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_9
    mul-float v21, v11, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_a
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_b
    iget v8, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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

    nop

    :goto_c
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_d
    iget v9, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_71

    nop

    nop

    :goto_f
    add-float/2addr v6, v8

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

    :goto_10
    add-float v2, v2, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_11
    move/from16 v3, v18

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_12
    iput v14, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

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

    :goto_13
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v5, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    float-to-int v3, v3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    int-to-float v15, v15

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

    nop

    :goto_18
    iput v15, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_19
    mul-float v21, v11, v14

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1a

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
    mul-float v3, v13, v7

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-float v3, v3

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

    :goto_1d
    if-nez v15, :cond_0

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    div-float v8, v8, v16

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
    div-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v4, p0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_23
    sub-float v10, v8, v9

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_24
    iget v2, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

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

    :goto_25
    div-float v15, v15, v16

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
    mul-float v21, v13, v7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_27
    iget v2, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_28
    add-float v15, v15, v21

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_29
    float-to-int v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_2b
    iget v3, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    :goto_2e
    iput v3, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

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

    :goto_2f
    sub-float/2addr v3, v15

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move/from16 v15, v18

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_33
    add-float v2, v2, v21

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v15, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    nop

    :goto_35
    goto/32 :goto_79

    nop

    nop

    :goto_36
    iget v3, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mFramePosition:I

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

    :goto_37
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_38
    sub-float v13, v11, v12

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_39
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_3a
    iput v3, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_3b
    iget v8, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3c
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3d
    move v14, v3

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

    :goto_3e
    iput v2, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_3f
    mul-float v21, v10, v5

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_40
    iget v11, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_41
    mul-float v21, v11, v9

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sub-float v15, v15, v21

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v3, :cond_1

    nop

    goto/32 :goto_1f

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    int-to-float v3, v3

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

    :goto_45
    sub-float v20, v8, v19

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

    :goto_46
    goto :goto_4e

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-float v2, v2, v21

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_49
    div-float v21, v21, v16

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

    :goto_4a
    sub-float v11, v6, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_4b
    add-float v17, v15, v17

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_4c
    if-nez v12, :cond_2

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :cond_2
    goto/32 :goto_7f

    nop

    nop

    :goto_4d
    iget v7, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_51
    mul-float v21, v20, v12

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget v5, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

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

    :goto_53
    add-float/2addr v12, v3

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_54
    iput v5, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

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

    :goto_55
    iget v2, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_d

    nop

    nop

    :goto_58
    move-object/from16 v0, p1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_59
    add-int v0, v0, v1

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_5a
    float-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_5c
    iput v3, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_5d
    move v5, v3

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

    :goto_5e
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5f
    move v7, v3

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_60
    add-float/2addr v3, v15

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move/from16 v18, v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_63
    add-float/2addr v8, v11

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_64
    iget v12, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_66
    const/high16 v4, 0x42c80000    # 100.0f

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_67
    float-to-int v3, v12

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

    :goto_68
    iput v2, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

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

    :goto_69
    iput-object v2, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

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

    :goto_6a
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_6b
    if-nez v5, :cond_4

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

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

    :goto_6d
    mul-float v21, v20, v15

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_6e
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_6f
    div-float v19, v12, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_70
    float-to-int v15, v15

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_71
    iget v15, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_74
    mul-float v21, v10, v5

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_75
    add-float/2addr v9, v3

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

    :goto_76
    div-float v17, v9, v16

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_65

    nop

    :goto_78
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget v12, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

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

    :goto_7b
    iget v3, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

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
    mul-float v3, v10, v5

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_7d
    iget v6, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7e
    iget v5, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_80
    if-nez v9, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    :goto_81
    iget v14, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_82
    iput v2, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_83
    iget v9, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_84
    mul-float v15, v20, v14

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_85
    add-float v2, v2, v21

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iput v3, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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

    :goto_87
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4f

    nop

    :goto_88
    mul-float v15, v13, v7

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_89
    iget v9, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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

    :goto_8a
    const/high16 v16, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_8b
    goto/16 :goto_35

    nop

    :goto_8c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_8d
    rem-int v0, v0, v1

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

    :goto_8e
    iget v7, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_8f
    iget v15, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_90
    add-float v19, v3, v19

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_91
    div-float v21, v21, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_92
    iget v12, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

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

    :goto_93
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_94
    move-object/from16 v2, p3

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_95
    float-to-int v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method initPath(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 25

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_0
    add-float v11, v11, v19

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v1, v13

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

    :goto_2
    iput v2, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_3
    add-float v2, v2, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_4
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    nop

    nop

    :goto_5
    goto/32 :goto_4c

    nop

    nop

    :goto_6
    if-nez v11, :cond_0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8c

    nop

    nop

    :goto_7
    move v15, v1

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-float/2addr v4, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_9
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-float/2addr v12, v11

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_b
    float-to-int v2, v2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_c
    mul-float v19, v1, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    iput v11, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_e
    const/high16 v18, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    div-float v14, v12, v13

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_10
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_79

    nop

    nop

    :goto_13
    div-float v24, v24, v18

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

    nop

    nop

    :goto_14
    mul-float v24, v9, v7

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

    :goto_15
    sub-float v1, v0, v14

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

    :goto_16
    mul-float v11, v9, v7

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-float/2addr v15, v11

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_19
    add-float v1, v1, v24

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v11, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_1b
    iput v4, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

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

    :goto_1c
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_1d
    iget v10, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_1e
    sub-float/2addr v15, v11

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

    :goto_1f
    add-float/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sub-float v11, v11, v19

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_21
    int-to-float v11, v11

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move/from16 v22, v2

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v2, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

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

    :goto_24
    iput v1, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v10, :cond_1

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

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput v2, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

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

    :goto_27
    iget v9, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v11, v4, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move/from16 v21, v0

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

    :goto_2a
    div-float v19, v19, v18

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2b
    float-to-int v11, v11

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2c
    neg-float v12, v13

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2d
    sub-float/2addr v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_2e
    div-float v17, v4, v13

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

    :goto_2f
    const/high16 v13, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_5

    nop

    :goto_31
    goto/32 :goto_4

    nop

    nop

    :goto_32
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_33
    iget v7, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    nop

    nop

    :goto_34
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_36
    add-float v1, v1, v20

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

    :goto_37
    move v10, v4

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_38
    iget v2, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

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

    :goto_39
    move-object/from16 v5, p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput v2, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_3b
    sub-float v2, v2, v23

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3c
    div-float v11, v11, v18

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3d
    iget v11, v4, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    :goto_3e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3f
    div-float v23, v23, v18

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

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

    nop

    :goto_41
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_43
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_44
    iput v0, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_45
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_46
    if-nez v6, :cond_2

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

    :cond_2
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget v2, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_48
    move/from16 v16, v4

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v9, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_4a
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_4b
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

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

    :goto_4c
    iget v7, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_4d
    iget v0, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_50
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_51
    mul-float v23, v1, v10

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_53
    mul-float v20, v15, v11

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_54
    add-float/2addr v0, v2

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_55
    iget v10, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_57
    int-to-float v4, v4

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_58
    iget v8, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_59
    float-to-int v11, v15

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    mul-float v11, v8, v6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    move/from16 v23, v1

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

    :goto_5c
    float-to-int v11, v12

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

    :goto_5d
    add-float v17, v15, v17

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

    :goto_5e
    move-object/from16 v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput v1, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_62
    move v7, v4

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    div-float/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_64
    if-lez v0, :cond_3

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    :goto_65
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_66
    mul-float v19, v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_67
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_68
    mul-float v11, v9, v7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_69
    iget v10, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move-object/from16 v4, p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6b
    move v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_6c
    iput v6, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    sub-float/2addr v8, v9

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

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

    :goto_6f
    iput v11, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_70
    sub-float v1, v1, v24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_71
    add-float v2, v2, v23

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

    :goto_72
    mul-float v24, v13, v10

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_73
    mul-float v11, v13, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_74
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_75
    move-object/from16 v2, p2

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_76
    sub-float v13, v2, v17

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_56

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_7a
    int-to-float v1, v1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    div-float/2addr v2, v13

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    int-to-float v11, v11

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

    :goto_7d
    mul-float v23, v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7e
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

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

    :goto_7f
    move-object/from16 v3, p3

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_80
    iget v15, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_81
    mul-float v19, v12, v11

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget v12, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v2, v4, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

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

    :goto_84
    float-to-int v4, v4

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_85
    iput v2, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    add-float/2addr v14, v11

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_87
    const/4 v0, 0x1

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

    :goto_88
    iget v2, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_89
    float-to-int v1, v1

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

    :goto_8a
    iget v10, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_8b
    iget v4, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_8c
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    const/high16 v18, 0x40000000    # 2.0f

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8e
    const/high16 v5, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iput v10, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    int-to-float v11, v11

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

    :goto_91
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_92
    iget v2, v4, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_93
    if-nez v7, :cond_4

    nop

    goto/32 :goto_4f

    nop

    :cond_4
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_94
    const v1, 0x2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput v11, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_96
    iput v4, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop
.end method

.method initPolar(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 10

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1b

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_2
    iput v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    add-float/2addr v7, v9

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

    :goto_4
    mul-float/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    add-float/2addr v4, v7

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    nop

    :goto_9
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_a
    mul-float/2addr v7, v8

    nop

    nop

    :goto_b
    goto/32 :goto_2a

    nop

    nop

    :goto_c
    iget v4, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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

    :goto_d
    add-int v0, v0, v1

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

    nop

    :goto_e
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

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

    nop

    :goto_f
    iget v7, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_10
    iget v8, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_11
    iget v2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    nop

    nop

    :goto_12
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_14
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_15
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

    :goto_16
    iput v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sub-float/2addr v8, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    nop

    nop

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
    iget v9, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_1e
    iput v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_1f
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    :goto_20
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_21
    iget v8, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_22
    iget v9, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-float/2addr v6, v4

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

    :goto_24
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

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
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

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

    :goto_28
    add-float/2addr v7, v9

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

    :goto_29
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_2a
    iput v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_2b
    mul-float/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2c
    iput v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

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

    :goto_2d
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_5b

    nop

    nop

    :goto_2f
    if-nez v1, :cond_1

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_30
    if-nez v7, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_2
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_31
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_32
    iput v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_33
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mFramePosition:I

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

    :goto_35
    iput v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    :goto_36
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sub-float/2addr v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_3a
    int-to-float v4, v4

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

    :goto_3b
    iget v7, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3c
    move v7, v0

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

    :goto_3d
    iput v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_3e
    add-float/2addr v7, v9

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_40
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_9

    nop

    :goto_42
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move v7, v0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_44
    iget v8, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    float-to-int v4, v6

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
    sub-float/2addr v8, v9

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_47
    move v6, v0

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

    :goto_48
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4a
    iget v1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4c
    add-float/2addr v7, v8

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_4d
    iput-object v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4e
    iget v8, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_4f
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_50
    move v7, v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_51
    iget v1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_53
    sub-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_54
    iget v2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_55
    mul-float/2addr v7, v0

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

    :goto_56
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_57
    add-float/2addr v7, v9

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

    :goto_58
    sub-float/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_59
    iget v3, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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

    :goto_5a
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

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

    :goto_5b
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget v8, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_5d
    return-void

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_5e
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_5f
    iget v6, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_60
    const/high16 v1, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_61
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_62
    int-to-float v0, v0

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

    :goto_63
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_64
    if-nez v7, :cond_5

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

    :cond_5
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_65
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    nop

    nop

    nop

    nop

    packed-switch v7, :pswitch_data_0

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget v8, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_67
    iget v9, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_68
    move v1, v0

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_36

    nop

    nop

    :goto_6a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_6c
    sub-float/2addr v3, v4

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

    nop

    :goto_6d
    if-nez v7, :cond_6

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

    :cond_6
    goto/32 :goto_3c

    nop

    nop

    :goto_6e
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget v9, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_71
    goto/16 :goto_20

    nop

    :goto_72
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_73
    mul-float/2addr v7, v8

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_74
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

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

    :goto_75
    mul-float/2addr v7, v0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_76
    iput v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

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

    :goto_77
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_7
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_78
    iget v7, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

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

    :goto_79
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_49

    nop

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
    mul-float v4, v5, v2

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

    :goto_7d
    invoke-static {v7}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_7e
    if-nez v7, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3b

    nop

    nop

    :goto_7f
    goto/16 :goto_19

    nop

    nop

    :goto_80
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_82
    iget v5, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_83
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_84
    mul-float v7, v3, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_86
    sub-float/2addr v7, v8

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_87
    float-to-int v4, v4

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iput v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_8a
    mul-float/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_8b
    int-to-float v4, v4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8c
    move v7, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8d
    iget v1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_8e
    add-float/2addr v7, v8

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_8f
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_90
    sub-float/2addr v8, v9

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_91
    iget v7, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_92
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

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

    :goto_93
    sub-float/2addr v4, v0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_94
    const v1, 0x15

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_95
    move v2, v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iput v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    nop

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
.end method

.method initScreen(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 22

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_0
    div-float v21, v21, v16

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1
    add-float/2addr v12, v4

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v15, v9

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

    nop

    :goto_4
    int-to-float v9, v9

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

    :goto_5
    move-object/from16 v3, p5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v4, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

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

    :goto_7
    int-to-float v12, v4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    mul-float v21, v11, v14

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v4, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_b
    mul-float v15, v20, v14

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

    :goto_c
    div-float v17, v9, v16

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_d
    mul-float v4, v10, v6

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v5, 0x42c80000    # 100.0f

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

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    iget v12, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_11
    iget v11, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_12
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    iput v9, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_14
    if-nez v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_0
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_15
    add-float/2addr v4, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v12, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_18
    int-to-float v12, v12

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_19
    move-object/from16 v5, p0

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

    :goto_1a
    move v14, v4

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

    :goto_1b
    iget v9, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_1c
    sub-float/2addr v4, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_1d
    mul-float/2addr v9, v12

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_73

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_20
    move/from16 v9, p2

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput v4, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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

    :goto_22
    float-to-int v4, v9

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    sub-float v20, v8, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    iput v6, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_25
    iput v4, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    int-to-float v9, v4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_27
    float-to-int v12, v12

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

    nop

    :goto_28
    float-to-int v4, v9

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    div-float/2addr v4, v5

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

    :goto_2a
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mFramePosition:I

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

    :goto_2b
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v9, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2e
    goto/16 :goto_7b

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-float v17, v15, v17

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_31
    sub-float/2addr v9, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    add-float/2addr v8, v11

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_33
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_34
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_35
    div-float v19, v12, v16

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_36
    sub-float v11, v2, v17

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_37
    div-float v15, v15, v16

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_38
    if-eqz v9, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_39
    move-object/from16 v0, p0

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

    :goto_3a
    iget v12, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_3b
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3c
    iput-object v12, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

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

    :goto_3d
    float-to-int v15, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_3e
    float-to-int v4, v12

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_3f

    nop

    nop

    :goto_42
    sub-float v15, v15, v21

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

    :goto_43
    move v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_44
    iput v14, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

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

    :goto_45
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz v4, :cond_2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_54

    nop

    nop

    :goto_47
    iput v12, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput v15, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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
    iput v12, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    add-float v19, v4, v19

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4c
    add-float/2addr v9, v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v12, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_4e
    iget v15, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

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

    :goto_4f
    float-to-int v9, v12

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_50
    float-to-int v4, v4

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

    :goto_51
    iget v12, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_52
    int-to-float v4, v4

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

    :goto_53
    const/high16 v16, 0x40000000    # 2.0f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move/from16 v4, p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_55
    sub-float v10, v8, v9

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_7e

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_58
    iget v9, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_59
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_5b
    iget v8, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_5c
    iput v4, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_5d
    mul-float v21, v10, v6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5e
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_5f
    goto :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v15, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_62
    move v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_63
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move-object/from16 v1, p3

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_66
    if-nez v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_3
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_67
    iget v14, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_69
    iget v12, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6a
    mul-float/2addr v12, v15

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move/from16 v18, v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {v12}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    sub-float v13, v11, v12

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    mul-float v15, v13, v7

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_6f
    add-float v15, v15, v21

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

    :goto_70
    float-to-int v9, v9

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_71
    move-object/from16 v2, p4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_72
    move/from16 v4, p1

    nop

    :goto_73
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_75
    int-to-float v15, v15

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    div-float v8, v8, v16

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_77
    add-float/2addr v2, v8

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget v7, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iput v4, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7a
    move/from16 v9, p2

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_7c
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    :goto_7d
    iget v7, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    div-float v11, v11, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_80
    int-to-float v12, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_81
    sub-float/2addr v12, v15

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget v8, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_83
    iput v12, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

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

    :goto_84
    mul-float v4, v13, v7

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

    :goto_85
    int-to-float v4, v4

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
.end method

.method setBounds(FFFF)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method setDpDt(FF[F[I[D[D)V
    .locals 21

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_0
    double-to-float v13, v13

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
    const/16 v18, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    add-float v17, v12, v15

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    aput v19, p3, v18

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    move v3, v12

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

    :goto_5
    sub-float v11, v1, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6
    move v4, v12

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_7
    array-length v12, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    sub-float v19, v13, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    goto/32 :goto_29

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v13, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v15, v4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

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

    :goto_e
    add-float v16, v11, v14

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

    :goto_f
    sub-float v12, v2, v13

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_11
    div-float/2addr v11, v12

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    move-object/from16 v0, p4

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

    :goto_13
    if-lt v11, v12, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    add-float v15, v6, v13

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

    :goto_15
    const/high16 v12, 0x40000000    # 2.0f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v10, " dd = "

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

    :goto_17
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_18
    div-float/2addr v13, v12

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    mul-float v19, v19, v11

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1a
    const/high16 v7, 0x7fc00000    # Float.NaN

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

    :goto_1b
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_33

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

    nop

    :goto_1f
    add-float v19, v19, v20

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_20
    const v1, 0x19

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    mul-float/2addr v13, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_22
    add-float v13, v13, v18

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_23
    double-to-float v12, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_24
    goto/16 :goto_33

    nop

    :pswitch_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    sub-float v13, v13, p2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aget v14, v0, v11

    nop

    nop

    packed-switch v14, :pswitch_data_0

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    aget-wide v13, p6, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2a
    move v1, v12

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v11, v11, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2c
    mul-float v20, v16, p1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2d
    aput v13, p3, v18

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2e
    aget-wide v12, p5, v11

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

    :goto_2f
    const/16 v18, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_30
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_31
    add-float v19, v19, v8

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto :goto_33

    nop

    nop

    nop

    :pswitch_2
    nop

    :goto_33
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v9, 0x0

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

    :goto_35
    add-float v14, v5, v13

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

    :goto_36
    goto :goto_33

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_37
    mul-float/2addr v14, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_38
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move v2, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :goto_3b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3c
    mul-float v13, v6, v4

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3d
    add-float/2addr v13, v9

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

    :goto_3e
    mul-float v18, v17, p2

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

    :goto_3f
    const/4 v8, 0x0

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

    :goto_40
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_1

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    :goto_42
    mul-float v11, v5, v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_43
    const/4 v4, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v6, 0x0

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
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method setView(FLandroidx/constraintlayout/core/motion/MotionWidget;[I[D[D[D)V
    .locals 34

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_2
    move/from16 v5, v22

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_3
    move v8, v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move/from16 v17, v0

    nop

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

    :goto_5
    move/from16 v23, v5

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_6
    goto/16 :goto_fa

    nop

    :goto_7
    goto/32 :goto_129

    nop

    nop

    :goto_8
    goto/32 :goto_e0

    nop

    nop

    :goto_9
    mul-double/2addr v14, v6

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v2, v4, v6, v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->layout(IIII)V

    goto/32 :goto_64

    nop

    nop

    :goto_b
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_c
    double-to-float v0, v9

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

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

    nop

    :goto_e
    sub-double/2addr v10, v14

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

    :goto_f
    move v14, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_10
    aget v4, v2, v4

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

    :goto_11
    aput-wide v18, v5, v6

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v10, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    float-to-double v1, v4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    float-to-double v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_15
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_16
    aget-wide v14, p6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_17
    sub-double/2addr v10, v8

    nop

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

    :goto_18
    move/from16 v16, v32

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_19
    if-lt v4, v15, :cond_0

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v10, v14

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 v28, v9

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_1c
    float-to-int v4, v4

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_1e
    add-double/2addr v6, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_1f
    add-float v4, v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    move/from16 v12, v16

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

    :goto_21
    move-wide/from16 v14, v18

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_88

    nop

    nop

    :goto_23
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_24
    aget v6, v2, v4

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_25
    float-to-double v10, v4

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_27
    move/from16 v20, v12

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

    :goto_28
    float-to-double v9, v11

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_29
    aget-wide v18, v2, v4

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

    :goto_2a
    if-nez v14, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    :cond_3
    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/2addr v4, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2d
    add-double/2addr v4, v0

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

    :goto_2e
    array-length v4, v2

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_2f
    move v12, v2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-object/from16 v1, p2

    nop

    nop

    :goto_32
    goto/32 :goto_3

    nop

    nop

    :goto_33
    mul-double/2addr v6, v14

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_34
    new-array v14, v4, [D

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_37
    move-wide/from16 v14, v18

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_38
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_39
    move/from16 v22, v6

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_3a
    move v8, v14

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3b
    float-to-int v2, v2

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

    :goto_3c
    move/from16 v29, v8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3d
    move v7, v2

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_3e
    add-float v0, v0, v24

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_3f
    new-array v15, v14, [F

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_40
    double-to-float v0, v4

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_41
    float-to-int v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_43
    array-length v14, v2

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move/from16 v32, v9

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_45
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    nop

    :goto_46
    array-length v14, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_47
    goto/16 :goto_30

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_48
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

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

    :goto_49
    float-to-double v10, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_4a
    double-to-float v9, v14

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move/from16 v16, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4c
    move/from16 v4, v23

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    aget-wide v18, p6, v4

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v9, 0x0

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

    :goto_50
    aget v6, v2, v4

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_51
    invoke-virtual {v2, v11, v12, v15, v4}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput-object v14, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_54
    if-nez v14, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    :cond_4
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_55
    const/16 v17, 0x1

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

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

    :goto_57
    sub-int v10, v0, v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_58
    move/from16 v14, v25

    nop

    nop

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

    :goto_59
    aget v11, v15, v2

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    aget v5, v4, v17

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

    nop

    nop

    :goto_5b
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5c
    move/from16 v16, v4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_5d
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_5e
    move/from16 v16, v4

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v14, 0x2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_61
    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_89

    nop

    nop

    :goto_62
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_63
    mul-double/2addr v9, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :goto_65
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    float-to-double v10, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_67
    float-to-double v9, v0

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    add-double v18, v18, v14

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_69
    float-to-double v9, v14

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_6a
    array-length v7, v3

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move/from16 v17, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    mul-double/2addr v14, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6e
    float-to-double v6, v5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6f
    move/from16 v25, v7

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

    :goto_70
    float-to-double v14, v4

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

    :goto_71
    float-to-double v14, v11

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_72
    float-to-double v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_30

    nop

    :pswitch_2
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_74
    add-double/2addr v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_75
    cmpl-double v14, v14, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_76
    move/from16 v28, v9

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

    :goto_77
    move/from16 v20, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_78
    move v2, v0

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object/from16 v1, p2

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget v6, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const/16 v17, 0x1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const/high16 v8, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const/4 v15, 0x1

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

    :goto_7e
    add-double/2addr v14, v8

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

    :goto_7f
    move v6, v8

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_80
    if-nez p6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_22

    nop

    nop

    :goto_82
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    float-to-double v6, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_84
    const/high16 v8, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    :goto_85
    float-to-double v1, v12

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_87
    add-double/2addr v9, v14

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_88
    double-to-float v2, v14

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_89
    float-to-double v4, v13

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

    nop

    :goto_8a
    goto/16 :goto_30

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    move-object/from16 v30, v4

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_8c
    float-to-double v4, v0

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_8d
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_8e
    float-to-double v6, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_8f
    float-to-double v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_90
    sub-double/2addr v14, v9

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_91
    move/from16 v33, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

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

    :goto_93
    move v9, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_94
    aget-wide v14, v14, v4

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

    :goto_95
    float-to-double v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_96
    double-to-float v0, v4

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_97
    add-int/lit8 v4, v4, 0x1

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

    :goto_98
    move v5, v2

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_99
    float-to-double v11, v14

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_9a
    move/from16 v14, p1

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    move/from16 v31, v11

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_9c
    move-object/from16 v27, v15

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_9d
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setRotationZ(F)V

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    aget v0, v4, v22

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_a0
    goto/16 :goto_11d

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    float-to-double v8, v12

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    move/from16 v21, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_a4
    move v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    sub-int/2addr v4, v15

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_a6
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_a7
    new-array v4, v14, [F

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

    :goto_a8
    move/from16 v22, v6

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    new-array v14, v4, [D

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setRotationZ(F)V

    :goto_ab
    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_ac
    goto/16 :goto_104

    nop

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    add-double/2addr v4, v6

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_af
    add-float v6, v16, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b2
    aget-wide v18, p4, v4

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    add-float v9, v28, v11

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_b4
    move v5, v14

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_b5
    move-wide/from16 v20, v14

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

    :goto_b6
    add-double/2addr v9, v6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b7
    float-to-double v8, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b8
    sub-int/2addr v4, v15

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

    :goto_b9
    array-length v5, v2

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    move/from16 v26, v5

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    aput-wide v18, v5, v6

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_bc
    const/high16 v13, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    double-to-float v14, v14

    nop

    nop

    nop

    nop

    packed-switch v4, :pswitch_data_0

    goto/32 :goto_47

    nop

    nop

    :goto_be
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_bf
    move-object/from16 v3, p5

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_c0
    const/4 v8, 0x0

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

    :goto_c1
    move v15, v0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_c2
    move/from16 v26, v5

    nop

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

    :goto_c3
    const-wide/16 v18, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_c4
    move/from16 v24, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c6
    move/from16 v25, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_c7
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_c8
    if-le v14, v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_8
    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_c9
    const/4 v12, 0x0

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

    :goto_ca
    iput-object v14, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

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

    :goto_cb
    const/4 v12, 0x1

    nop

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

    :goto_cc
    div-float v9, v6, v8

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

    :goto_cd
    move v15, v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    const/16 v22, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_cf
    move/from16 v23, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_d0
    move/from16 v17, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    const/16 v19, 0x0

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    move/from16 v11, v24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_d3
    move v9, v14

    nop

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

    :goto_d4
    move v10, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    array-length v4, v2

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_d7
    move/from16 v18, v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    array-length v15, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d9
    move/from16 v24, v8

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_da
    move/from16 v19, v1

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

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

    :goto_dc
    float-to-double v14, v8

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_dd
    move v13, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_de
    mul-double/2addr v6, v0

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_df
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    float-to-double v0, v14

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_e3
    aget-wide v14, v14, v4

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    goto/16 :goto_30

    nop

    nop

    nop

    :goto_e6
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_e7
    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_e8
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_e9
    move v10, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_ea
    div-float v10, v23, v2

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    sub-double/2addr v6, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_ec
    div-float v11, v21, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_ed
    move/from16 v24, v7

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    mul-double/2addr v1, v9

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_f0
    move/from16 v9, v28

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_f1
    move-object/from16 v2, p3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_f2
    goto/16 :goto_32

    nop

    :goto_f3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    move/from16 v29, v8

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_f5
    add-float/2addr v0, v5

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    move/from16 v25, v7

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_f7
    move/from16 v19, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_f8
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_f9
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_fa
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    move/from16 v21, v11

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_fc
    if-lt v4, v5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6c

    nop

    nop

    :goto_fd
    if-lez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_df

    nop

    :goto_fe
    mul-double/2addr v1, v9

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_ff
    float-to-double v14, v11

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

    nop

    :goto_100
    add-float v8, v29, v10

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_101
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_3d

    nop

    nop

    :goto_102
    if-ge v7, v10, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_d4

    nop

    nop

    :goto_103
    move v7, v5

    nop

    nop

    nop

    :goto_104
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_106
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_107
    double-to-float v8, v10

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_108
    aget-wide v18, v3, v4

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

    :goto_109
    add-float v6, v6, v33

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_10a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_10b
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_10c
    goto/16 :goto_30

    nop

    :pswitch_5
    goto/32 :goto_cd

    nop

    nop

    :goto_10d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_10e
    double-to-float v1, v6

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_10f
    sub-int v7, v6, v2

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_110
    float-to-double v6, v2

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_111
    aput-wide v4, v3, v17

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_112
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_113
    mul-double/2addr v8, v10

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_115
    aput-wide v4, v3, v19

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_116
    aget v2, v15, v12

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_117
    iget v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_118
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11a
    if-eqz v14, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_11b
    div-float v8, v7, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_11c
    move/from16 v8, v29

    nop

    nop

    nop

    :goto_11d
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    float-to-double v9, v4

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

    :goto_11f
    aget-wide v18, v2, v4

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_120
    move/from16 v33, v6

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

    :goto_121
    move/from16 v6, v17

    nop

    nop

    nop

    nop

    nop

    :goto_122
    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_123
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    :goto_124
    goto/32 :goto_5e

    nop

    nop

    :goto_125
    move v11, v14

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_126
    move/from16 v23, v10

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_127
    move-object/from16 v2, p3

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_128
    float-to-double v8, v4

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    const/4 v4, 0x0

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_12a
    add-float v2, v16, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_12b
    if-nez p6, :cond_d

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12c
    move/from16 v5, v26

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_12d
    move-wide/from16 v20, v14

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_12e
    aget v4, v2, v4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    float-to-double v14, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_130
    move-object/from16 v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_131
    float-to-double v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop
.end method

.method public setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 8

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5
    iget v4, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_6
    iget v1, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-double/2addr v4, v6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_9
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    sub-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    sub-float/2addr v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    double-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    double-to-float v4, v4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    sub-float/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_12
    iput v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_13
    iget v4, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_14
    div-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_15
    double-to-float v4, v4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    iput v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    :goto_17
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    div-float/2addr v1, v2

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

    :goto_1a
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1e
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1f
    div-float/2addr v4, v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    float-to-double v2, v3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    :goto_24
    float-to-double v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_25
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_26
    iget v1, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    float-to-double v4, v4

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

    :goto_28
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_29
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2a
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2b
    add-float/2addr v3, v4

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

    :goto_2c
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_21

    nop

    :goto_2e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_30
    div-float/2addr v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_31
    sub-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop
.end method
