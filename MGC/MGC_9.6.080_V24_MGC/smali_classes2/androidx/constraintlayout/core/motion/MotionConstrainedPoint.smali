.class Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;
.super Ljava/lang/Object;
.source "MotionConstrainedPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;",
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

.field private elevation:F

.field private height:F

.field private mAnimateRelativeTo:I

.field mCustomVariable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

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

    goto/32 :goto_b

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->names:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const-string v4, "height"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    const-string v0, "position"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const-string v1, "x"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    const-string v2, "y"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    const v1, 0xb

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

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    const-string v5, "pathRotate"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    const-string v3, "width"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyElevation:Z

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/LinkedHashMap;

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

    :goto_3
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, -0x1

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

    :goto_5
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mDrawPath:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mTempDelta:[D

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

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

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

    :goto_a
    new-array v0, v0, [D

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

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

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

    :goto_c
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

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
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_e
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0x12

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

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
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

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

    :goto_19
    new-array v1, v0, [D

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1a
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

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

    :goto_1d
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mMode:I

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

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mTempValue:[D

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

    :goto_25
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

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

    :goto_26
    add-int v0, v0, v1

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

    :goto_27
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

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

    :goto_28
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mAnimateRelativeTo:I

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

    :goto_29
    const v0, 0xb

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method private b8a548655f7eae060a58306fa7eed2d2m(FF)Z
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    goto/32 :goto_1e

    nop

    :goto_1
    goto/32 :goto_22

    nop

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    goto :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v3, 0x358637bd    # 1.0E-6f

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
    if-gtz v0, :cond_1

    nop

    nop

    goto/32 :goto_12

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

    :goto_8
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    return v1

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    goto :goto_16

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    :goto_14
    if-ne v0, v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    move v1, v2

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    :goto_17
    sub-float v0, p1, p2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_19
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    nop

    :goto_1a
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v1

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x5

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;I)V"
        }
    .end annotation

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v4, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    :goto_3
    goto/16 :goto_85

    nop

    :goto_4
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x4

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_6
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_77

    nop

    nop

    :goto_7
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    sparse-switch v4, :sswitch_data_0

    :goto_a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_31

    nop

    nop

    :goto_d
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_fa

    nop

    nop

    :goto_f
    const/4 v3, 0x7

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_10
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    nop

    :goto_11
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    if-nez v4, :cond_4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_5
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v3, :cond_6

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

    :cond_6
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_7

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_aa

    nop

    :goto_18
    const/4 v3, 0x2

    nop

    :goto_19
    goto/32 :goto_bd

    nop

    nop

    :goto_1a
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_1d
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_20
    const-string v4, "progress"

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_21
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_59

    nop

    nop

    :goto_22
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    nop

    nop

    :goto_23
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_24
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    nop

    :goto_25
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_28
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_2a
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    nop

    :goto_2b
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_2c
    if-nez v4, :cond_8

    nop

    goto/32 :goto_a

    nop

    :cond_8
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_2f
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_31
    const-string v4, "translationX"

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_33
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_35
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_36
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v3, :cond_9

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :cond_9
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3b
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string v3, ","

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_41
    if-nez v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_a
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_b
    goto/32 :goto_89

    nop

    nop

    :goto_43
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    nop

    nop

    :goto_44
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_cb

    nop

    :pswitch_4
    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_49
    const-string v4, "pivotX"

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

    :goto_4a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4b
    if-nez v4, :cond_c

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_8d

    nop

    nop

    :goto_4c
    goto/16 :goto_19

    nop

    nop

    :sswitch_2
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

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

    :goto_4e
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4f
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_a5

    nop

    :goto_51
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const-string v4, "rotationX"

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_55
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_56
    goto :goto_61

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const-string v4, "translationY"

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_59
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_36

    nop

    nop

    :goto_5c
    goto/16 :goto_90

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const-string v5, "UNKNOWN spline "

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_6b

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_63
    if-nez v3, :cond_d

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_65
    if-nez v6, :cond_e

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_cb

    nop

    nop

    :pswitch_6
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    nop

    :goto_6b
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_6e
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    nop

    nop

    :goto_70
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const-string v7, " ViewSpline not a CustomSet frame = "

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_72
    const/16 v3, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

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

    :goto_75
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez v3, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_7c

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

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

    :goto_81
    if-nez v3, :cond_10

    nop

    nop

    goto/32 :goto_af

    nop

    :cond_10
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_84
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    nop

    nop

    :goto_85
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_88
    const/4 v3, -0x1

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_89
    const/16 v3, 0xb

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8a
    move-object v4, v2

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_cb

    nop

    :pswitch_8
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

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

    :goto_8d
    const/16 v3, 0xc

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

    :goto_8e
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v4, v6}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_90
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_22

    nop

    nop

    :goto_93
    goto/16 :goto_cb

    nop

    :pswitch_9
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_95
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_96
    const/16 v3, 0x8

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_97
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_e9

    nop

    nop

    :goto_98
    const/4 v3, 0x5

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

    :goto_99
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_9a
    goto/16 :goto_44

    nop

    :goto_9b
    goto/32 :goto_43

    nop

    nop

    :goto_9c
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_b8

    nop

    nop

    :goto_9d
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_52

    nop

    nop

    nop

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

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_4
        -0x4a771f65 -> :sswitch_7
        -0x4a771f64 -> :sswitch_c
        -0x490b9c39 -> :sswitch_0
        -0x490b9c38 -> :sswitch_3
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3ae243aa -> :sswitch_1
        -0x3ae243a9 -> :sswitch_9
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_8
        0x589b15e -> :sswitch_6
        0x2fdfbde0 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch

    :goto_9f
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    check-cast v1, Ljava/lang/String;

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_a3
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_a4
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    nop

    :goto_a5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

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

    :goto_a7
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_a8
    if-nez v3, :cond_11

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_aa
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_ac
    const-string v4, "translationZ"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_ae
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_cb

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_4f

    nop

    nop

    :goto_b1
    goto/16 :goto_cb

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

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

    :goto_b3
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_b4
    const-string v4, "scaleX"

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    goto/16 :goto_19

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    goto/16 :goto_19

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v7

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

    :goto_b8
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    const/4 v6, 0x0

    nop

    nop

    packed-switch v3, :pswitch_data_0

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_bb
    goto/16 :goto_19

    nop

    :sswitch_8
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    const v1, 0x4

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_be
    const-string v4, "alpha"

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_bf
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    const-string v4, "rotationZ"

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

    :goto_c3
    const-string v4, "pathRotate"

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    check-cast v5, Landroidx/constraintlayout/core/motion/CustomVariable;

    nop

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

    :goto_c5
    if-nez v5, :cond_12

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c7
    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_c8
    if-nez v3, :cond_13

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_56

    nop

    nop

    :goto_c9
    if-nez v4, :cond_14

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_14
    goto/32 :goto_2e

    nop

    nop

    :goto_ca
    invoke-static {v4, v3}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_cb
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    aget-object v3, v3, v5

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_cf
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_d0
    const/16 v3, 0xa

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

    nop

    :goto_d1
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    nop

    :goto_d2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_d3
    goto :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_d5
    if-nez v4, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_15
    goto/32 :goto_5

    nop

    nop

    :goto_d6
    goto/16 :goto_19

    nop

    nop

    :sswitch_9
    goto/32 :goto_de

    nop

    nop

    :goto_d7
    const-string v7, ", value"

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    goto/16 :goto_19

    nop

    nop

    :sswitch_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v4, p2, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    goto/32 :goto_5c

    nop

    nop

    :goto_da
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_db
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_dc
    const-string v4, "scaleY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_dd
    if-nez v4, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_16
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_de
    const-string v4, "pivotY"

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_df
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_e1
    if-nez v1, :cond_17

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

    :cond_17
    goto/32 :goto_e0

    nop

    nop

    :goto_e2
    const-string v4, "rotationY"

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

    :goto_e3
    goto/16 :goto_c1

    nop

    nop

    nop

    :goto_e4
    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_e5
    if-nez v3, :cond_18

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    :cond_18
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    :goto_e7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_e9
    goto/16 :goto_cb

    nop

    nop

    :pswitch_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    if-nez v4, :cond_19

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_96

    nop

    nop

    :goto_eb
    if-nez v3, :cond_1a

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

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

    :goto_ee
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_ef
    if-nez v3, :cond_1b

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

    :cond_1b
    goto/32 :goto_68

    nop

    nop

    :goto_f0
    const-string v3, "CUSTOM"

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_f1
    goto/16 :goto_19

    nop

    nop

    :sswitch_b
    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_f3
    const-string v4, "MotionPaths"

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    if-nez v4, :cond_1c

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_f5
    if-nez v4, :cond_1d

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_f7
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_f8
    instance-of v6, v2, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_fa
    const/4 v3, 0x0

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

    nop

    :goto_fb
    goto/16 :goto_19

    nop

    nop

    :sswitch_c
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    if-nez v3, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_d3

    nop

    nop

    :goto_fd
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 5

    goto/32 :goto_a

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

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_3
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v4, :cond_1

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

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

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

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getPivotX()F

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getVisibility()I

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

    nop

    :goto_a
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getPivotY()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->isContinuous()Z

    move-result v4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_38

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyElevation:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttributeNames()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x4

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationY()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationX()F

    move-result v0

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

    :goto_17
    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getScaleX()F

    move-result v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_35

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1d
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1e
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationX()F

    move-result v0

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

    :goto_20
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationZ()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationY()F

    move-result v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_22
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

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

    :goto_23
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationZ()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_29
    goto :goto_2f

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2c
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getAlpha()F

    move-result v0

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_33
    if-nez v3, :cond_4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    :goto_35
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_1b

    nop

    nop

    :goto_37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getScaleY()F

    move-result v0

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

.method public compareTo(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;)I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const v1, 0xd

    nop

    goto/32 :goto_9

    nop

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

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xb

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

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
    check-cast p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

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
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->compareTo(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;)I

    move-result p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "pivotX"

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_3
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

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

    :goto_4
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_5
    if-eqz v4, :cond_0

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_a
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_b
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_10
    const-string v2, "translationZ"

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

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

    :goto_14
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

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

    :goto_15
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_16
    const-string v0, "elevation"

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    const-string v0, "scaleX"

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_19
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_1a
    const-string v0, "rotationY"

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_1b
    const-string v0, "rotationX"

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v0, "rotationZ"

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v0, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1e
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_30

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

    :goto_1f
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v0, "scaleY"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

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
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

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

    :goto_23
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_25
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_26
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

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

    :goto_28
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2a
    goto/32 :goto_c

    nop

    nop

    :goto_2b
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v0, "pathRotate"

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_2e
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_30
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    :goto_32
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_6c

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_34
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_35
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v0, :cond_9

    nop

    goto/32 :goto_5a

    nop

    :cond_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    :goto_3a
    goto/32 :goto_4a

    nop

    nop

    :goto_3b
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_a
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_3a

    nop

    nop

    :goto_3f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_41
    const-string v1, "alpha"

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_43
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_45
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_46
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

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
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string v0, "translationX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_49
    if-ne v0, v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :cond_c
    goto/32 :goto_76

    nop

    nop

    :goto_4a
    goto/32 :goto_3f

    nop

    nop

    :goto_4b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_4c
    if-ne v0, v3, :cond_d

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_e
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4e
    const-string v0, "pivotY"

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_4f
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_51
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_52
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_54
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_56
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_57
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_58
    iget v0, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

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

    :goto_59
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-eqz v0, :cond_f

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_f
    :goto_5c
    goto/32 :goto_2c

    nop

    nop

    :goto_5d
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5f
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_60
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

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

    :goto_61
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_62
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_63
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_65
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_67
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_69
    goto/32 :goto_57

    nop

    nop

    :goto_6a
    const/4 v4, 0x4

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_6c
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_6d
    if-nez v0, :cond_10

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_6e
    if-nez v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :cond_11
    goto/32 :goto_58

    nop

    nop

    :goto_6f
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

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

    :goto_70
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_73
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_75
    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

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

    :goto_76
    if-eq v3, v4, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    :cond_12
    :goto_77
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_78
    if-eqz v0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_13
    :goto_79
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const v0, 0x18

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

    :goto_7b
    const-string v0, "translationY"

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

    :goto_7c
    const v1, 0xf

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7d
    if-nez v0, :cond_14

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v0

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_7f
    if-nez v0, :cond_15

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

    :cond_15
    goto/32 :goto_7b

    nop

    nop

    :goto_80
    const-string v0, "progress"

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_81
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_82
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method

.method different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;[Z[Ljava/lang/String;)V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget v4, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

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

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    aget-boolean v2, p2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4
    or-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    iget v4, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

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

    :goto_6
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    or-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    or-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aput-boolean v2, p2, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v1, v0, 0x1

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

    :goto_b
    aget-boolean v2, p2, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    iget v4, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v1, v0, 0x1

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

    :goto_e
    aget-boolean v2, p2, v0

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

    :goto_f
    const v0, 0x16

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v0, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    const v1, 0x12

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_12
    aget-boolean v2, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_14
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

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

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    aput-boolean v2, p2, v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    or-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1a
    add-int/lit8 v0, v1, 0x1

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

    :goto_1b
    iget v4, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

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

    :goto_1c
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_16

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

    :goto_21
    iget v4, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_22
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_23
    aput-boolean v2, p2, v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_24
    aput-boolean v2, p2, v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_26
    or-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_27
    aput-boolean v2, p2, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_28
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

    :goto_29
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2a
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b8a548655f7eae060a58306fa7eed2d2m(FF)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v1, v0, 0x1

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

    :goto_2d
    aget-boolean v2, p2, v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop
.end method

.method fillStandard([D[I)V
    .locals 6

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_28

    nop

    nop

    :goto_3
    goto/32 :goto_48

    nop

    nop

    :goto_4
    const/16 v2, 0xb

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_7
    aput v1, v0, v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aget v4, p2, v2

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

    :goto_b
    aput v1, v0, v2

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
    const/16 v2, 0xd

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const/16 v2, 0x11

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

    :goto_f
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v2, 0xc

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_11
    aput v1, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_12
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    const/4 v1, 0x0

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

    :goto_14
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

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

    :goto_15
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_17
    if-lt v3, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_18
    new-array v0, v0, [F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    array-length v3, p2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1b
    aput v1, v0, v2

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

    :goto_1c
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

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

    :goto_1e
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

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

    :goto_1f
    const/4 v2, 0x7

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

    :goto_20
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

    nop

    nop

    :goto_21
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

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

    :goto_23
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_24
    aput v1, v0, v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aput v1, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x0

    nop

    nop

    :goto_28
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_29
    float-to-double v4, v4

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

    :goto_2a
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2b
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2d
    const/4 v2, 0x2

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

    :goto_2e
    const v1, 0x7

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2f
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_30
    aget v4, v0, v4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move v1, v3

    nop

    nop

    :goto_32
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_33
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_34
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

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

    :goto_35
    const/16 v2, 0xa

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_36
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_37
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_38
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-lt v2, v3, :cond_2

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

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    :goto_3a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_3b
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    aput v1, v0, v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3d
    aput-wide v4, p1, v1

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

    :goto_3e
    aget v3, p2, v2

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

    :goto_3f
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_40
    aput v1, v0, v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_42
    const v0, 0x10

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

    :goto_43
    const/16 v2, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_44
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_46
    const/16 v2, 0x10

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v3, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/16 v0, 0x12

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

    :goto_4b
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4d
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    array-length v4, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4f
    const/16 v2, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_50
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_51
    goto/32 :goto_16

    nop

    :goto_52
    const/16 v2, 0x9

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_53
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    float-to-double v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_12

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-array v2, v1, [F

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

    :goto_6
    add-int/lit8 v4, p3, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v1

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

    :goto_8
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    goto/32 :goto_21

    nop

    :goto_b
    aget v5, v2, v3

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

    :goto_c
    if-lt v3, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

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

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    float-to-double v3, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    move p3, v4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_16
    const/4 v2, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

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

    :goto_18
    return v2

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1b
    aput-wide v3, p2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    if-eq v1, v2, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aput-wide v5, p2, p3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

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
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v0

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
    return v0

    nop

    :goto_3
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_2

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
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

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

.method setBounds(FFFF)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    nop

    nop

    goto/32 :goto_2

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
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

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

.method public setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v2

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

    :goto_2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v3

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

    :goto_3
    const v0, 0x4

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
    int-to-float v1, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    int-to-float v0, v0

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

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_6

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_12
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public setState(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/MotionWidget;IF)V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float v1, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-float/2addr v0, p4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    sub-float v0, p4, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v0, 0x42b40000    # 90.0f

    nop

    nop

    nop

    packed-switch p3, :pswitch_data_0

    goto/32 :goto_14

    nop

    nop

    :goto_a
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v3

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

    :goto_e
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

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

    :goto_13
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_4

    nop

    nop

    :pswitch_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
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

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    :goto_1b
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

    :goto_1c
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1d
    const v1, 0x10

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method
