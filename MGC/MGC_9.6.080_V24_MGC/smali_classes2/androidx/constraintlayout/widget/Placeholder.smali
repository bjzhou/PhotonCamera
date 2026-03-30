.class public Landroidx/constraintlayout/widget/Placeholder;
.super Landroid/view/View;
.source "Placeholder.java"


# instance fields
.field private mContent:Landroid/view/View;

.field private mContentId:I

.field private mEmptyVisibility:I


# direct methods
.method private 9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder:[I

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
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    iget v4, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_24

    nop

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

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

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v4, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

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

    :goto_f
    goto/16 :goto_28

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    :goto_11
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_15
    goto/32 :goto_b

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_17
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Placeholder;->getContext()Landroid/content/Context;

    move-result-object v0

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

    :goto_18
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder_placeholder_emptyVisibility:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_19
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder_content:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_1c
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_1d
    if-eq v3, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    const v1, 0x8

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq v3, v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    if-lt v2, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    :goto_22
    goto/16 :goto_13

    nop

    :goto_23
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_25
    iput v4, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_27
    iput v4, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

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

    nop

    nop

    goto/32 :goto_a

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

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    const v0, 0x6

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

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/Placeholder;->9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    :goto_e
    iput-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

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

    :goto_10
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_7

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

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
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/Placeholder;->9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x4

    nop

    goto/32 :goto_0

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

    goto/32 :goto_2

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

    goto/32 :goto_8

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

    :goto_1
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/Placeholder;->9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

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

    :goto_7
    iput-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

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
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/Placeholder;->9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getEmptyVisibility()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

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
    return v0

    nop

    nop
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_37

    nop

    nop

    :goto_2
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

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

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v5, v2, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_6
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    invoke-virtual {p1, v5, v2, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_8
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_9
    div-float/2addr v7, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

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

    :goto_d
    iget v7, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    :goto_10
    div-float/2addr v2, v6

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    int-to-float v6, v6

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_12
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x8

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_15
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    const/16 v0, 0xdf

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

    :goto_17
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    sub-float/2addr v2, v7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    div-float/2addr v8, v6

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

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

    :goto_1e
    return-void

    nop

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_23
    add-float/2addr v7, v8

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

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

    :goto_26
    const/high16 v6, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    goto/32 :goto_c

    nop

    nop

    :goto_28
    int-to-float v3, v3

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

    :goto_29
    invoke-virtual {p1, v0, v0, v0}, Landroid/graphics/Canvas;->drawRGB(III)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/32 :goto_31

    nop

    nop

    :goto_2b
    div-float/2addr v7, v6

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

    :goto_2c
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v5, "?"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2e
    const/16 v1, 0xff

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2f
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_30
    const/16 v2, 0xd2

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

    :goto_31
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

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

    :goto_32
    sub-float/2addr v2, v7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Placeholder;->isInEditMode()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_35
    sub-float/2addr v7, v6

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

    :goto_36
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

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

    :goto_39
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3a
    int-to-float v2, v4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop
.end method

.method public setContentId(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x13

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    :goto_d
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_e
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Placeholder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    const/4 v1, 0x0

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

    :goto_12
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

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

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

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

    :goto_1e
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    if-eq v0, p1, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    if-ne p1, v0, :cond_4

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

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

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
.end method

.method public setEmptyVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    goto/32 :goto_1

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

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v3, 0x0

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

    :goto_2
    const/16 v3, 0x8

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    :goto_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_12

    nop

    :goto_d
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    const v1, 0x5

    nop

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

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

    :goto_1e
    iget-object v1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v2, v3, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Placeholder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    :goto_24
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

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

    :goto_26
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    :goto_27
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne v2, v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_29
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_2a
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    goto/32 :goto_15

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

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

    :goto_6
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_9
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    :goto_a
    goto/32 :goto_11

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

    :goto_c
    iput-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

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

    :goto_d
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

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

    :goto_12
    iget-object v1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Placeholder;->isInEditMode()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x12

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

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

    :goto_17
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

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

    :goto_1e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
