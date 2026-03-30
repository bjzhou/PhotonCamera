.class public Landroidx/constraintlayout/utils/widget/MockView;
.super Landroid/view/View;
.source "MockView.java"


# instance fields
.field private mDiagonalsColor:I

.field private mDrawDiagonals:Z

.field private mDrawLabel:Z

.field private mMargin:I

.field private mPaintDiagonals:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private mPaintTextBackground:Landroid/graphics/Paint;

.field protected mText:Ljava/lang/String;

.field private mTextBackgroundColor:I

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColor:I


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

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_diagonalsColor:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_showLabel:I

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

    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    const/high16 v2, 0x43200000    # 160.0f

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_9
    if-eq v3, v4, :cond_0

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_d
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

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

    :goto_e
    if-eq v3, v4, :cond_2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

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

    :goto_12
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

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

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

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

    :goto_1a
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    if-eq v3, v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1d
    if-eq v3, v4, :cond_4

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

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

    :goto_1f
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

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

    :goto_23
    div-float/2addr v1, v2

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

    :goto_24
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_26
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_28
    iput-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2a
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

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

    :goto_2b
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MockView;->getId()I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2d
    if-eq v3, v4, :cond_6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2e
    iput-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

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

    :goto_2f
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_30
    if-eq v3, v4, :cond_7

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    :goto_31
    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

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

    :goto_32
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_29

    nop

    nop

    :goto_36
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_37
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

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

    :goto_38
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_39
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

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

    :goto_3a
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3b
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_label:I

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
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_3e

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_27

    nop

    nop

    :goto_3f
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_41
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_43
    const v1, 0x15

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

    :goto_44
    iget-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

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

    :goto_45
    goto/16 :goto_29

    nop

    nop

    :goto_46
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_47
    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_48
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MockView:[I

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_49
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

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
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_labelColor:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4c
    if-lt v2, v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_21

    nop

    :goto_4f
    if-nez p2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_29

    nop

    nop

    :goto_53
    goto/32 :goto_2

    nop

    nop

    :goto_54
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_showDiagonals:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_55
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MockView_mock_labelBackgroundColor:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_56
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_57
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_59
    mul-float/2addr v0, v1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MockView;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_5
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

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

    :goto_9
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v1, 0xff

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

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Landroid/graphics/Paint;

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_18
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_25

    nop

    nop

    :goto_19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    const/16 v2, 0xc8

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    const v0, 0x20

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

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

    :goto_26
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_27
    const/16 v2, 0x32

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_28
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_d

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

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0xc8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

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

    :goto_5
    const v0, 0x11

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

    :goto_6
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    const/16 v0, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    const v1, 0x11

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    goto/32 :goto_27

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    new-instance v0, Landroid/graphics/Paint;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Landroid/graphics/Rect;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

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

    :goto_13
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_15
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    :goto_1d
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x0

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

    :goto_21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_c

    nop

    nop

    :goto_22
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

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

    :goto_26
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_28
    const/16 v1, 0x32

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
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

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    const v1, 0x1f

    nop

    goto/32 :goto_21

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
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroid/graphics/Paint;

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

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

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

    :goto_7
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    nop

    nop

    goto/32 :goto_26

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

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

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

    :goto_c
    const/4 v1, 0x0

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

    :goto_d
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_20

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

    goto/32 :goto_7

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

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

    :goto_14
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_15
    const/16 v1, 0x32

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    const/16 v1, 0xc8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_28

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_19
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

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

    :goto_1b
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

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

    :goto_1c
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1d
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

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

    :goto_1e
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

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

    :goto_1f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v0, Landroid/graphics/Rect;

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

    :goto_21
    add-int v0, v0, v1

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

    :goto_22
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    nop

    goto/32 :goto_13

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

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_24
    const/16 v0, 0xff

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

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

    :goto_26
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

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

    :goto_27
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1e

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

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

    :goto_2
    sub-int/2addr v5, v6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    iget-object v13, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_4
    div-float/2addr v4, v3

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr v8, v9

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    iget-object v7, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

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

    :goto_8
    int-to-float v5, v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_a
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v6, v1

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

    :goto_c
    iget-object v7, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    float-to-int v6, v4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-float v11, v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v8, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    const/4 v12, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    int-to-float v5, v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v1, v1, -0x1

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v5, v3, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_17
    move-object v2, p1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_18
    sub-int v4, v1, v4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3d

    nop

    :goto_1a
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1d
    iget-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1f
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    int-to-float v10, v1

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

    :goto_22
    iget v9, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

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

    :goto_23
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

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

    :goto_28
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_29
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_2b
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

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

    :goto_2c
    float-to-int v5, v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2d
    int-to-float v9, v0

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

    :goto_2e
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v6, 0x0

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

    :goto_30
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto/32 :goto_36

    nop

    nop

    :goto_31
    const/4 v9, 0x0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    int-to-float v4, v4

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

    :goto_33
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MockView;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_36
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

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

    :goto_37
    const/4 v10, 0x0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_38
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_39
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v11, 0x0

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

    :goto_3b
    iget v7, v7, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_3c
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_26

    nop

    :goto_3e
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/32 :goto_35

    nop

    nop

    :goto_40
    int-to-float v3, v0

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

    :goto_41
    iget-object v13, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_42
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_43
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_44
    int-to-float v4, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_45
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_46
    sub-int v2, v0, v2

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

    nop

    :goto_47
    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_49
    move-object v8, p1

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

    :goto_4a
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_31

    nop

    nop

    :goto_4b
    const/4 v4, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4c
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_4d
    const/4 v4, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4f
    add-float/2addr v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_50
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_51
    iget-object v13, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

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

    :goto_52
    add-int/2addr v7, v8

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

    :goto_53
    int-to-float v11, v0

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

    :goto_54
    iget-object v7, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_55
    goto/32 :goto_3e

    nop

    nop

    :goto_56
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_57
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_58
    goto/32 :goto_25

    nop

    nop

    :goto_59
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_50

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

    goto/32 :goto_41

    nop

    nop

    :goto_5b
    sub-int/2addr v6, v7

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_5c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5d
    int-to-float v10, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5e
    int-to-float v6, v1

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget v6, v6, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

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

    :goto_63
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v7, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

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

    :goto_65
    iget v8, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_67
    int-to-float v12, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MockView;->getHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method
