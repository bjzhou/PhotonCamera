.class Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;
.super Ljava/lang/Object;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final CURVE_FIT:I = 0x4

.field private static final DRAW_PATH:I = 0x5

.field private static final FRAME_POSITION:I = 0x2

.field private static final PATH_MOTION_ARC:I = 0xa

.field private static final PERCENT_HEIGHT:I = 0xc

.field private static final PERCENT_WIDTH:I = 0xb

.field private static final PERCENT_X:I = 0x6

.field private static final PERCENT_Y:I = 0x7

.field private static final SIZE_PERCENT:I = 0x8

.field private static final TARGET_ID:I = 0x1

.field private static final TRANSITION_EASING:I = 0x3

.field private static final TYPE:I = 0x9

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0xb

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentHeight:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_sizePercent:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const/16 v2, 0x8

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Landroid/util/SparseIntArray;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x7

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_motionTarget:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v2, 0xa

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
    const/4 v2, 0x4

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

    :goto_10
    const/4 v2, 0x1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_framePosition:I

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

    :goto_12
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentWidth:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_keyPositionType:I

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

    :goto_14
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

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
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_16

    nop

    nop

    :goto_18
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentX:I

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

    :goto_1a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_29

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

    :goto_1c
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_curveFit:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x19

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_transitionEasing:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_24

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_22
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v2, 0xc

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

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

    :goto_25
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_27
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_28
    const/4 v2, 0x3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentY:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_38

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_0

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2e
    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

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

    :goto_31
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_18

    nop

    nop

    :goto_33
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_pathMotionArc:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_34
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_38
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_drawPath:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V

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
.end method

.method private static read(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "a"
        }
    .end annotation

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_2
    aget-object v2, v2, v3

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

    :goto_3
    sget-object v5, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_4
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

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
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_1d

    nop

    nop

    :goto_d
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_11
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_12
    const/4 v6, 0x3

    nop

    nop

    nop

    packed-switch v5, :pswitch_data_0

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    if-eq v2, v6, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    :goto_16
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

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

    :goto_1a
    const-string v5, "   "

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

    :goto_1b
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_20
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_74

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_31

    nop

    nop

    :goto_26
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_74

    nop

    :goto_29
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2b
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

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

    :goto_2c
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_2e
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_2f
    iget v2, v2, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_30
    goto/16 :goto_74

    nop

    nop

    :pswitch_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v5, "unused attribute 0x"

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

    :goto_32
    iget v2, v2, Landroid/util/TypedValue;->type:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_33
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_34
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

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

    :goto_35
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

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

    :goto_38
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v5, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

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

    :goto_3c
    add-int v0, v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3d
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

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

    nop

    :goto_3e
    const v1, 0x20

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

    :goto_3f
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_55

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

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

    :goto_45
    if-eq v1, v3, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    :goto_46
    if-eq v2, v6, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_47
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_74

    nop

    :pswitch_6
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_49
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string v1, "no frame position"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4d
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4e
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_4f
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetString:Ljava/lang/String;

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

    nop

    nop

    :goto_50
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_43

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v3, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetString:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_55
    const-string v2, "KeyPosition"

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
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_58
    if-lt v1, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    :goto_59
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    :goto_5a
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_5d
    sget-object v2, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

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

    :goto_5e
    goto/16 :goto_74

    nop

    :pswitch_8
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

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

    :goto_60
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

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

    :goto_65
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_66
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_3
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :goto_67
    goto/32 :goto_5b

    nop

    nop

    :goto_68
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_69
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    :goto_6a
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_6b
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6c
    if-eq v2, v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    :cond_6
    goto/32 :goto_6b

    nop

    nop

    :goto_6d
    goto/16 :goto_74

    nop

    :pswitch_a
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto :goto_74

    nop

    :pswitch_b
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_6f
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

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

    :goto_72
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_73
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_a

    nop

    nop

    :goto_75
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    nop

    goto/32 :goto_60

    nop

    nop
.end method
