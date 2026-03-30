.class public Landroidx/constraintlayout/utils/widget/MotionButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "MotionButton.java"


# instance fields
.field private mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method private 9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

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

    :goto_1
    if-ge v4, v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRoundPercent(F)V

    :goto_4
    goto/32 :goto_25

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    if-ge v4, v6, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_f

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_round:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v3, v4, :cond_3

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

    :cond_3
    goto/32 :goto_20

    nop

    nop

    :goto_13
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_b

    nop

    :goto_15
    const/16 v6, 0x15

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
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

    :goto_19
    if-eq v3, v4, :cond_5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

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

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1e
    if-lt v2, v1, :cond_6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    :goto_1f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_roundPercent:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0, v0, v0, v0}, Landroidx/constraintlayout/utils/widget/MotionButton;->setPadding(IIII)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRound(F)V

    goto/32 :goto_29

    nop

    nop

    :goto_25
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    :goto_28
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_4

    nop

    nop

    :goto_2a
    goto/32 :goto_1f

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v0, 0x7fc00000    # Float.NaN

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

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionButton;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    goto/32 :goto_7

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionButton;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_4

    nop

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

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_6

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

    :goto_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionButton;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method static synthetic access$000(Landroidx/constraintlayout/utils/widget/MotionButton;)F
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
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

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

.method static synthetic access$100(Landroidx/constraintlayout/utils/widget/MotionButton;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

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

    nop
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    cmpl-float v1, v1, v2

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
    const v0, 0x8

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

    :goto_b
    const/16 v2, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_10
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

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

    :goto_11
    if-lt v1, v2, :cond_2

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
    goto/32 :goto_10

    nop

    nop

    :goto_12
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public getRound()F
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

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

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

.method public getRoundPercent()F
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

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setRound(F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    new-instance v2, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

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

    :goto_a
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_4a

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getHeight()I

    move-result v2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

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
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRoundPercent(F)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

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
    invoke-virtual {v3, v4, v6, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto/32 :goto_4f

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    :goto_13
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_14
    int-to-float v7, v2

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

    :goto_15
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_16
    move v0, v2

    nop

    :goto_17
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_18
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x6

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->invalidateOutline()V

    :goto_1e
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1f
    goto :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

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
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_23
    const/16 v5, 0x15

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_24
    if-nez v4, :cond_2

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

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_25
    const v1, 0x15

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_26
    move v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ge v1, v5, :cond_3

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v4, v3, v3, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2c
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    nop

    nop

    :goto_2d
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v2, Landroidx/constraintlayout/utils/widget/MotionButton$2;

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
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_4
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_30
    cmpl-float v4, p1, v3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_31
    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/MotionButton$2;-><init>(Landroidx/constraintlayout/utils/widget/MotionButton;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    :goto_33
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_36
    cmpl-float v0, v0, p1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_39
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3b
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3c
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3e
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

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

    :goto_3f
    if-ge v2, v5, :cond_6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    :goto_40
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_41
    const/4 v3, 0x0

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

    :goto_42
    int-to-float v6, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_43
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

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

    :goto_44
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

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

    :goto_46
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_47
    if-ge v1, v5, :cond_7

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

    :cond_7
    goto/32 :goto_32

    nop

    nop

    :goto_48
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_8
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_4a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_9
    goto/32 :goto_40

    nop

    nop

    :goto_4c
    if-eqz v2, :cond_a

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4d
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v1, 0x1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_33

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public setRoundPercent(F)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_0
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_4c

    nop

    :goto_5
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    if-ge v1, v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v2, Landroid/graphics/RectF;

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

    :goto_8
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    const v0, 0xb

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-float v8, v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

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

    :goto_12
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getHeight()I

    move-result v2

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

    :goto_14
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    new-instance v2, Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_5
    goto/32 :goto_4b

    nop

    :goto_1a
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x16

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x1

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

    :goto_1e
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

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

    :goto_1f
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

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

    :goto_20
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

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

    :goto_21
    mul-float/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    int-to-float v7, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-ge v1, v5, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_6
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_25
    if-eqz v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    nop

    :goto_26
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_29
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_1e

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v6, v3, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

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

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_32
    cmpl-float v4, p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_33
    goto :goto_3a

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v2, :cond_8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    :goto_36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->invalidateOutline()V

    :goto_38
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move v0, v2

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    cmpl-float v0, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_3d
    if-ge v2, v5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v2, Landroidx/constraintlayout/utils/widget/MotionButton$1;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_40
    invoke-virtual {v3, v6, v4, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/16 v5, 0x15

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

    :goto_42
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    :goto_43
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_44
    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/MotionButton$1;-><init>(Landroidx/constraintlayout/utils/widget/MotionButton;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_45
    move v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_48
    div-float/2addr v4, v6

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_49
    const/high16 v6, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4a
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_14

    nop

    nop

    :goto_4b
    goto/32 :goto_2d

    nop

    :goto_4c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop
.end method
