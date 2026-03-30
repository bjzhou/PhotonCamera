.class Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;
.super Ljava/lang/Object;
.source "MotionConstrainedPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x2

.field public static final DEBUG:Z = false

.field static final PERPENDICULAR:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field private alpha:F

.field private applyElevation:Z

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

.field private elevation:F

.field private height:F

.field private mAnimateRelativeTo:I

.field private mDrawPath:I

.field private mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field mMode:I

.field private mPathRotate:F

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field mTempDelta:[D

.field mTempValue:[D

.field mVisibilityMode:I

.field private position:F

.field private rotation:F

.field private rotationX:F

.field public rotationY:F

.field private scaleX:F

.field private scaleY:F

.field private translationX:F

.field private translationY:F

.field private translationZ:F

.field visibility:I

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v4, "height"

    nop

    goto/32 :goto_b

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

    :goto_2
    const-string v3, "width"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x18

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const v1, 0x3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "x"

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

    :goto_6
    const-string v0, "position"

    nop

    nop

    goto/32 :goto_5

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->names:[Ljava/lang/String;

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

    :goto_a
    const-string v2, "y"

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

    :goto_b
    const-string v5, "pathRotate"

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

    :goto_c
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

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

    :goto_d
    goto/32 :goto_10

    nop

    :goto_e
    goto/32 :goto_6

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
    goto/32 :goto_8

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

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_26

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    nop

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyElevation:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTempValue:[D

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAnimateRelativeTo:I

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

    :goto_c
    new-array v0, v0, [D

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_e
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

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

    :goto_10
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mMode:I

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

    :goto_16
    const/4 v0, -0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

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

    :goto_1b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1c
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mDrawPath:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTempDelta:[D

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

    :goto_1e
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

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
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_29
    new-array v1, v0, [D

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2a
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_15

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    cmpl-float v0, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

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

    nop

    :goto_4
    const v3, 0x358637bd    # 1.0E-6f

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_9
    return v1

    nop

    :goto_a
    goto/32 :goto_3

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

    goto/32 :goto_4

    nop

    nop

    :goto_c
    const v0, 0x7

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

    :goto_d
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

    :goto_e
    goto/32 :goto_14

    nop

    :goto_f
    move v1, v2

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
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    goto :goto_12

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    return v1

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x18

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sub-float v0, p1, p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    if-ne v0, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_a

    nop

    nop

    :goto_22
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "splines",
            "mFramePosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;I)V"
        }
    .end annotation

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_1
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_2
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    :goto_4
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4, p2, v5}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;)V

    goto/32 :goto_82

    nop

    nop

    :goto_6
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_43

    nop

    nop

    :goto_7
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :cond_1
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

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

    :goto_9
    const-string v4, "progress"

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v3, 0xb

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_b
    const/4 v3, 0x0

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

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_aa

    nop

    :goto_d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_e
    aget-object v3, v3, v5

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

    :goto_f
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    sparse-switch v4, :sswitch_data_0

    :goto_10
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v7, ", value"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_13
    move v3, v5

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_14
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_16
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_f9

    nop

    nop

    :goto_19
    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_1a
    if-nez v4, :cond_4

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

    :cond_4
    goto/32 :goto_b

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1c
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_47

    nop

    nop

    :pswitch_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_1f
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    if-nez v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_cf

    nop

    nop

    :goto_21
    if-nez v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_22
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    nop

    nop

    :goto_23
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_47

    nop

    nop

    :pswitch_2
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v4, "transformPivotY"

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

    nop

    nop

    :goto_29
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    nop

    nop

    :goto_2b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch v3, :pswitch_data_0

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_2e
    const-string v4, "alpha"

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

    :goto_2f
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_31
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v4, :cond_7

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_103

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_47

    nop

    :pswitch_4
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    :goto_38
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_39
    if-nez v6, :cond_8

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_8
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_3d
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto :goto_3e

    nop

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v4, :cond_9

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

    :cond_9
    goto/32 :goto_3d

    nop

    nop

    :goto_49
    if-nez v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v4, :cond_b

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

    :cond_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_af

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_52
    goto/16 :goto_3e

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_56
    goto/16 :goto_3e

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_57
    const/16 v3, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_47

    nop

    :pswitch_7
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v3, :cond_d

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_d
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_8b

    nop

    :goto_5e
    goto/32 :goto_8a

    nop

    nop

    :goto_5f
    if-nez v3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-nez v4, :cond_f

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

    :cond_f
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_ab

    nop

    :goto_62
    const/4 v3, 0x5

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_3e

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_64
    if-nez v4, :cond_10

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_10
    goto/32 :goto_a

    nop

    nop

    :goto_65
    const-string v3, ","

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const-string v7, " ViewSpline not a CustomSet frame = "

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

    :goto_67
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto :goto_6b

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_6a

    nop

    nop

    :goto_6a
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_3e

    nop

    nop

    :sswitch_6
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v4, :cond_11

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_11
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_e7

    nop

    nop

    :goto_6f
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_71
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_72
    const-string v4, "rotationY"

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_74
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-nez v4, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const/16 v3, 0x9

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_79
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_7b
    const v0, 0x12

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const/16 v3, 0xa

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

    :goto_7d
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_7f
    if-nez v3, :cond_13

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_80
    if-nez v4, :cond_14

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_82
    goto/16 :goto_fb

    nop

    nop

    :pswitch_8
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_83
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_85
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    nop

    :goto_86
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const-string v4, "rotationX"

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_89
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_6e

    nop

    nop

    :goto_8c
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_8d
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_8e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_8f
    const v1, 0x20

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_91
    const-string v4, "rotation"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_f7

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    goto/16 :goto_3e

    nop

    nop

    :sswitch_7
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_95
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    new-instance v3, Ljava/lang/StringBuilder;

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

    :goto_97
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

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

    :goto_98
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

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

    :goto_99
    const-string v4, "elevation"

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline;

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

    :goto_9b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9d
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_9e
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    nop

    :goto_9f
    goto/32 :goto_54

    nop

    nop

    :goto_a0
    const-string v3, "CUSTOM"

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

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

    :goto_a2
    goto/16 :goto_7e

    nop

    nop

    :goto_a3
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_a6
    move-object v4, v2

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

    :goto_a7
    goto/16 :goto_2b

    nop

    nop

    :goto_a8
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_ee

    nop

    :goto_ab
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_ac
    if-nez v4, :cond_15

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_15
    goto/32 :goto_7c

    nop

    nop

    :goto_ad
    goto/16 :goto_3e

    nop

    :sswitch_8
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_ae
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_b0
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_b1
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_b5
    if-nez v4, :cond_16

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_16
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_2

    nop

    nop

    :goto_b8
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_3b

    nop

    nop

    :goto_b9
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_cb

    nop

    nop

    :goto_ba
    if-nez v3, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_92

    nop

    nop

    :goto_bb
    const/16 v3, 0x8

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

    :goto_bc
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    goto/16 :goto_84

    nop

    nop

    :goto_be
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    if-nez v4, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    const-string v5, "UNKNOWN spline "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_c5
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_c6
    const-string v4, "scaleY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_c7
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_cb
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_cc
    if-nez v3, :cond_19

    nop

    goto/32 :goto_a8

    nop

    :cond_19
    goto/32 :goto_a7

    nop

    nop

    :goto_cd
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_ce
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_cf
    goto :goto_c8

    nop

    :goto_d0
    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_d1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_d2
    const-string v4, "MotionPaths"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_d3
    goto/16 :goto_3e

    nop

    nop

    :sswitch_9
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_d6
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d8
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_89

    nop

    nop

    :goto_d9
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_da
    const-string v4, "translationX"

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_db
    const/4 v3, 0x7

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_dc
    goto/16 :goto_3e

    nop

    nop

    nop

    :sswitch_a
    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_dd
    if-nez v3, :cond_1a

    nop

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

    :cond_1a
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_de
    goto/16 :goto_9f

    nop

    nop

    nop

    :goto_df
    goto/32 :goto_9e

    nop

    nop

    :goto_e0
    const-string v4, "transformPivotX"

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

    :goto_e1
    goto/16 :goto_f2

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_e3
    goto/16 :goto_3e

    nop

    nop

    nop

    :sswitch_b
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_e5
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_e6
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

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

    :goto_e7
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    if-nez v1, :cond_1b

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

    :cond_1b
    goto/32 :goto_1e

    nop

    nop

    :goto_e9
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :sswitch_c
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    const-string v4, "scaleX"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_eb
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_ec
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_ed
    return-void

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_5
        -0x4a771f65 -> :sswitch_1
        -0x490b9c39 -> :sswitch_7
        -0x490b9c38 -> :sswitch_3
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_2
        -0x3621dfb2 -> :sswitch_a
        -0x3621dfb1 -> :sswitch_b
        -0x2d5a2d1e -> :sswitch_c
        -0x2d5a2d1d -> :sswitch_8
        -0x266f082 -> :sswitch_6
        -0x42d1a3 -> :sswitch_0
        0x2382115 -> :sswitch_d
        0x589b15e -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_2
        :pswitch_c
        :pswitch_6
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :goto_ee
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_ef
    const-string v4, "transitionPathRotate"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_f0
    if-nez v3, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :cond_1c
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    nop

    nop

    nop

    nop

    :goto_f2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    if-nez v4, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1d
    goto/32 :goto_db

    nop

    nop

    :goto_f6
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    :goto_f7
    goto/32 :goto_c3

    nop

    nop

    :goto_f8
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_bf

    nop

    nop

    :goto_fa
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fb
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    instance-of v6, v2, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_fd
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_fe
    goto/16 :goto_47

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_67

    nop

    nop

    :goto_ff
    if-nez v4, :cond_1e

    nop

    goto/32 :goto_10

    nop

    :cond_1e
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_100
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_101
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    :goto_102
    const-string v4, "translationZ"

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

    :goto_103
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_104
    const/16 v3, 0xc

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_105
    if-nez v3, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_106
    const-string v4, "translationY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_107
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_108
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    :sswitch_d
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_109
    if-nez v5, :cond_20

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

    :cond_20
    goto/32 :goto_16

    nop

    nop

    :goto_10a
    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop
.end method

.method public applyParameters(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    nop

    :goto_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0x15

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_2

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

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

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

    :goto_c
    const/4 v0, 0x0

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
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_18
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyElevation:Z

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

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    if-ge v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_2a

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

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

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

    :goto_20
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    :goto_23
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_27
    const v0, 0x20

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

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

    :goto_29
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2d
    if-ge v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

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

    :goto_30
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

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

    :goto_31
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_32
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop
.end method

.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    goto/32 :goto_22

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

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

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

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
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

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

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

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

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_7
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_8
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5e

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

    :goto_a
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_d
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

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

    :goto_f
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    :goto_11
    goto/32 :goto_43

    nop

    nop

    :goto_12
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x4

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_15
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

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

    :goto_16
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_1a
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mDrawPath:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v4, :cond_1

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

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_22
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

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

    :goto_25
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_26
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyElevation:Z

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

    :goto_29
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2b
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

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
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_30
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_32
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_33
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_35
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_36
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_37
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_39
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

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

    :goto_3c
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3d
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

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

    :goto_3e
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_3
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_c

    nop

    nop

    :goto_42
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_45
    goto/32 :goto_41

    nop

    nop

    :goto_46
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

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
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

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

    :goto_4a
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->isContinuous()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4c
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_4d
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4f
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

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

    :goto_50
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAnimateRelativeTo:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_51
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_52
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

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

    :goto_55
    add-int v0, v0, v1

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

    :goto_56
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

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

    :goto_57
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_58
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_59
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

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

    :goto_5a
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

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

    :goto_5b
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_17

    nop

    :goto_5e
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;)I
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
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
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

    nop

    :goto_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    return v0

    nop

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

    :goto_7
    const v1, 0xd

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    nop

    nop

    nop

    goto/32 :goto_0

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

    nop

    :goto_a
    const v0, 0x16

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
    goto/32 :goto_6

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

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

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->compareTo(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;)I

    move-result p1

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
    return p1

    nop

    nop

    nop

    :goto_2
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "points",
            "keySet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3
    goto/32 :goto_33

    nop

    nop

    :goto_4
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    :goto_7
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    :goto_9
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    :goto_a
    goto/32 :goto_16

    nop

    nop

    :goto_b
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_c
    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

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

    :goto_13
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "alpha"

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

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

    :goto_16
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_17
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_19
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

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
    goto/32 :goto_6d

    nop

    nop

    :goto_1d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_1e
    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_20
    if-ne v0, v2, :cond_3

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

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    const-string v0, "rotation"

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_22
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_23
    const-string v0, "rotationY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_24
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

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

    nop

    :goto_25
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_26
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    :goto_27
    goto/32 :goto_34

    nop

    nop

    :goto_28
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

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

    :goto_29
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_2b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2d
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2f
    const-string v0, "scaleX"

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_33
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_34
    const-string v0, "progress"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_35
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v0, :cond_9

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_9
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v0, :cond_a

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_a
    :goto_38
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3b
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string v0, "scaleY"

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_c
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_d
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_43
    const v1, 0x18

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_44
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

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

    :goto_45
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_46
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string v0, "transformPivotY"

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

    :goto_48
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

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

    :goto_49
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_4a
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_e

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v0, "translationZ"

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

    :goto_4d
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_4e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_4f
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_50
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :cond_f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_53
    const-string v0, "elevation"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_54
    const-string v0, "rotationX"

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

    :goto_55
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

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

    :goto_56
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

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

    :goto_57
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_58
    if-nez v0, :cond_10

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5a
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const-string v0, "transitionPathRotate"

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5d
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

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

    :goto_5e
    if-nez v0, :cond_11

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_5f
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_61
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_62
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_63
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_64
    const-string v0, "translationY"

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_65
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_66
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_67
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_69
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_6a
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_6d
    goto/32 :goto_3e

    nop

    nop

    :goto_6e
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_70
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_71
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_72
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_73
    const-string v0, "transformPivotX"

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_75
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const v0, 0x1d

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_77
    if-nez v0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_79
    const-string v0, "translationX"

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

    :goto_7a
    if-nez v0, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_79

    nop

    nop

    :goto_7b
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;[Z[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "points",
            "mask",
            "custom"
        }
    .end annotation

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_0
    or-int/2addr v2, v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    or-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget-boolean v2, p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    aput-boolean v2, p2, v0

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

    :goto_4
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v0, v1, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    aget-boolean v2, p2, v0

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
    aput-boolean v2, p2, v0

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

    :goto_a
    add-int/lit8 v1, v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget-boolean v2, p2, v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    or-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aput-boolean v2, p2, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_10
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

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

    :goto_12
    or-int/2addr v2, v3

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

    :goto_13
    add-int/lit8 v1, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput-boolean v2, p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_15
    const v1, 0x9

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

    nop

    goto/32 :goto_2d

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

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v3

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
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    or-int/2addr v2, v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aput-boolean v2, p2, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_21
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

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

    :goto_22
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v3

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
    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_24
    const v0, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
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

    :goto_26
    add-int/lit8 v1, v0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_28
    aget-boolean v2, p2, v0

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

    :goto_29
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_2a
    aget-boolean v2, p2, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v0, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1f

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

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_0
    const/16 v2, 0xb

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aput v1, v0, v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_6
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v2, 0xf

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_b
    aput v1, v0, v2

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

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-lt v2, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_f
    aput v1, v0, v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    goto/32 :goto_3b

    nop

    :goto_12
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_14
    aput v1, v0, v2

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_17
    move v1, v3

    nop

    :goto_18
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

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

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1c
    array-length v4, v0

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

    :goto_1d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v2, 0x10

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_20
    const/16 v2, 0xa

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_22
    aput v1, v0, v2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v2, 0xc

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

    :goto_25
    aput v1, v0, v2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x5

    nop

    goto/32 :goto_22

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

    nop

    nop

    :goto_28
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_29
    aput v1, v0, v2

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
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2b
    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

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

    :goto_2e
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2f
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v2, 0x11

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_31
    aget v4, p2, v2

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

    :goto_32
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_35
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_36
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_37
    if-lt v3, v4, :cond_1

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    :goto_38
    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_39
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3a
    goto/32 :goto_28

    nop

    nop

    :goto_3b
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    float-to-double v4, v4

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3d
    aput-wide v4, p1, v1

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
    const/16 v2, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3f
    array-length v3, p2

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

    :goto_40
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_41
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_42
    const/16 v0, 0x12

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

    :goto_43
    add-int/lit8 v3, v1, 0x1

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

    :goto_44
    const/16 v2, 0x8

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_45
    aput v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_46
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_47
    const/4 v2, 0x0

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

    :goto_48
    aput v1, v0, v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-lez v0, :cond_2

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
    goto/32 :goto_3a

    nop

    :goto_4a
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_4b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4d
    const/4 v2, 0x7

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4e
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

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

    :goto_4f
    aget v4, v0, v4

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

    :goto_50
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_52
    aget v3, p2, v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_53
    const v0, 0xe

    nop

    goto/32 :goto_46

    nop

    nop

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

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v3, v3, 0x1

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

    :goto_4
    aget v5, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    const v0, 0x5

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
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput-wide v3, p2, p3

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

    :goto_e
    new-array v2, v1, [F

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

    :goto_f
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x19

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v4, p3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_13
    move p3, v4

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

    :goto_14
    if-lt v3, v1, :cond_1

    nop

    goto/32 :goto_6

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

    :goto_15
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_1f

    nop

    :goto_16
    const/4 v2, 0x1

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

    :goto_17
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    return v2

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_12

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    aput-wide v5, p2, p3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    float-to-double v5, v5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    float-to-double v3, v1

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
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

    nop

    nop

    goto/32 :goto_3

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
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setState(Landroid/graphics/Rect;Landroid/view/View;IF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "view",
            "rotation",
            "prevous"
        }
    .end annotation

    goto/32 :goto_18

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    add-float/2addr v0, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_12

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
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

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

    :goto_6
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_5

    nop

    nop

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    iget v1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    int-to-float v2, v2

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sub-float v0, p4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    goto :goto_14

    nop

    :pswitch_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyParameters(Landroid/view/View;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setBounds(FFFF)V

    goto/32 :goto_e

    nop

    nop

    :goto_10
    int-to-float v3, v3

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

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

    :goto_17
    goto :goto_14

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

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
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    :goto_1d
    const/high16 v0, 0x42b40000    # 90.0f

    nop

    nop

    nop

    nop

    nop

    packed-switch p3, :pswitch_data_0

    goto/32 :goto_17

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cw",
            "constraintSet",
            "rotation",
            "viewId"
        }
    .end annotation

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float v1, v1

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

    :goto_3
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sub-float/2addr v1, v0

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
    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz v0, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_d
    const/high16 v0, 0x43340000    # 180.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    cmpl-float v0, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

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

    :goto_10
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    int-to-float v2, v2

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    const/high16 v0, 0x42b40000    # 90.0f

    nop

    nop

    packed-switch p3, :pswitch_data_0

    goto/32 :goto_3

    nop

    nop

    :goto_15
    const v1, 0xe

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    iget v1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

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

    :goto_18
    int-to-float v0, v0

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

    :goto_19
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setBounds(FFFF)V

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    iget v0, p1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    goto :goto_1e

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x1d

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    goto/32 :goto_14

    nop

    nop

    :goto_22
    add-float/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    const/high16 v0, 0x43b40000    # 360.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public setState(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyParameters(Landroid/view/View;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    int-to-float v3, v3

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

    :goto_4
    int-to-float v2, v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setBounds(FFFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const v0, 0x11

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

    :goto_b
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
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

    :goto_e
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop
.end method
