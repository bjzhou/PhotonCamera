.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;
.source "MotionTelltales.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionTelltales"


# instance fields
.field mInvertMatrix:Landroid/graphics/Matrix;

.field mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mPaintTelltales:Landroid/graphics/Paint;

.field mTailColor:I

.field mTailScale:F

.field mVelocityMode:I

.field velocity:[F


# direct methods
.method private 9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
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

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

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

    :goto_3
    if-eq v3, v4, :cond_1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales:[I

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

    :goto_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_velocityMode:I

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

    :goto_7
    if-eq v3, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_12

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_29

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

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v1, 0x40a00000    # 5.0f

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_28

    nop

    nop

    :goto_16
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v3, v4, :cond_3

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1e
    goto :goto_28

    nop

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    const v0, 0x8

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_27
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_29
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2a
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2b
    const v1, 0x8

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2c
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2d
    if-lt v2, v1, :cond_5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailColor:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_30
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailScale:I

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
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

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

    :goto_2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    const v0, -0xff01

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const/4 v0, 0x2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

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

    :goto_a
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    const/high16 v0, 0x3e800000    # 0.25f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    new-array v0, v0, [F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    goto/32 :goto_9

    nop

    nop

    :goto_0
    new-array v0, v0, [F

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
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/high16 v0, 0x3e800000    # 0.25f

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    new-instance v0, Landroid/graphics/Paint;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, -0xff01

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

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

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    new-instance v0, Landroid/graphics/Matrix;

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

    :goto_6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Landroid/graphics/Paint;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v0, 0x3e800000    # 0.25f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x2

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

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    const v0, -0xff01

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    new-array v0, v0, [F

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


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroidx/constraintlayout/utils/widget/MockView;->onAttachedToWindow()V

    goto/32 :goto_1

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
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    goto/32 :goto_52

    nop

    nop

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

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    :goto_1
    move/from16 v19, v4

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

    :goto_2
    move-object/from16 v6, p0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4
    if-lt v13, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5
    sub-float v4, v1, v5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    move v11, v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-float/2addr v1, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getHeight()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v5, 0x1

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

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_e
    move-object v10, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    array-length v0, v10

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

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

    :goto_12
    iget-object v5, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

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

    :goto_13
    sub-float v3, v0, v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    move/from16 v18, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

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

    :goto_16
    int-to-float v0, v8

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

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

    nop

    :goto_18
    mul-float/2addr v5, v4

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

    :goto_19
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1a
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x6

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1f
    iput-object v1, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    :goto_20
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_21
    aget v12, v10, v11

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_23
    move-object/from16 v20, v2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_25
    iget v5, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_26
    aget v14, v10, v13

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

    :goto_27
    iget v4, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_28
    const/4 v3, 0x0

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

    :goto_29
    aget v3, v2, v3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2a
    goto :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_19

    nop

    nop

    :goto_2c
    move v13, v0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move v2, v14

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

    :goto_2f
    move v3, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_30
    new-array v0, v0, [F

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_e

    nop

    nop

    :goto_31
    const/4 v0, 0x0

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

    :goto_32
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data

    :goto_34
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getWidth()I

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

    :goto_36
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_37
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    :goto_39
    goto/32 :goto_35

    nop

    nop

    :goto_3a
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

    :goto_3b
    iget-object v4, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_36

    nop

    nop

    :goto_3d
    move-object/from16 v1, p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3e
    array-length v0, v10

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3f
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v15, p1

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

    :goto_41
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_7

    nop

    nop

    :goto_43
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_44
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewVelocity(Landroid/view/View;FF[FI)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_45
    move/from16 v17, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_46
    int-to-float v1, v9

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

    :goto_47
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

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

    :goto_49
    mul-float/2addr v0, v14

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move/from16 v16, v0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_4b
    if-lt v11, v0, :cond_4

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

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4c
    aget v5, v2, v5

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_2

    nop

    nop

    :goto_4f
    instance-of v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_50
    mul-float/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_51
    const/4 v0, 0x5

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

    :goto_52
    const v0, 0xc

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
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
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

    nop

    :goto_1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/utils/widget/MockView;->onLayout(ZIIII)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->postInvalidate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->requestLayout()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mText:Ljava/lang/String;

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

    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
