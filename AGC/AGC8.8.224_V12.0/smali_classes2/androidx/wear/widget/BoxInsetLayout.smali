.class public Landroidx/wear/widget/BoxInsetLayout;
.super Landroid/view/ViewGroup;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Z

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/BoxInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/BoxInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    :cond_0
    iget-object p1, p0, Landroidx/wear/widget/BoxInsetLayout;->e:Landroid/graphics/Rect;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/wear/widget/BoxInsetLayout;->e:Landroid/graphics/Rect;

    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Landroidx/wear/widget/BoxInsetLayout;->a:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Landroidx/wear/widget/BoxInsetLayout;->b:I

    return-void
.end method

.method private final a(Lava;II)I
    .locals 2

    iget-boolean v0, p0, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lava;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget v0, p1, Lava;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x50

    if-ne p2, v0, :cond_1

    :cond_0
    iget p1, p1, Lava;->bottomMargin:I

    add-int/2addr p1, p3

    return p1

    :cond_1
    iget p1, p1, Lava;->bottomMargin:I

    return p1
.end method

.method private final b(Lava;II)I
    .locals 2

    iget-boolean v0, p0, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lava;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p1, Lava;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    :cond_0
    iget p1, p1, Lava;->leftMargin:I

    add-int/2addr p1, p3

    return p1

    :cond_1
    iget p1, p1, Lava;->leftMargin:I

    return p1
.end method

.method private final c(Lava;II)I
    .locals 2

    iget-boolean v0, p0, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lava;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget v0, p1, Lava;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    iget p1, p1, Lava;->rightMargin:I

    add-int/2addr p1, p3

    return p1

    :cond_1
    iget p1, p1, Lava;->rightMargin:I

    return p1
.end method

.method private final d(Lava;II)I
    .locals 2

    iget-boolean v0, p0, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lava;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p1, Lava;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x30

    if-ne p2, v0, :cond_1

    :cond_0
    iget p1, p1, Lava;->topMargin:I

    add-int/2addr p1, p3

    return p1

    :cond_1
    iget p1, p1, Lava;->topMargin:I

    return p1
.end method

.method private final e(II)I
    .locals 1

    iget v0, p0, Landroidx/wear/widget/BoxInsetLayout;->b:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroidx/wear/widget/BoxInsetLayout;->a:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3e15f634

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lava;

    return p1
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lava;

    invoke-virtual {p0}, Landroidx/wear/widget/BoxInsetLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lava;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lava;

    invoke-direct {v0, p1}, Lava;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroidx/wear/widget/BoxInsetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    invoke-virtual {p0}, Landroidx/wear/widget/BoxInsetLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iget-object v1, p0, Landroidx/wear/widget/BoxInsetLayout;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getChildCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, v0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingTop()I

    move-result v4

    iget-object v5, v0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    sub-int v5, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    invoke-virtual {v0, v6}, Landroidx/wear/widget/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lava;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, v8, Lava;->gravity:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    const v11, 0x800033

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getLayoutDirection()I

    move-result v13

    invoke-static {v11, v13}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredHeight()I

    move-result v15

    and-int/lit8 v12, v11, 0x7

    invoke-direct {v0, v14, v15}, Landroidx/wear/widget/BoxInsetLayout;->e(II)I

    move-result v14

    invoke-direct {v0, v8, v12, v14}, Landroidx/wear/widget/BoxInsetLayout;->b(Lava;II)I

    move-result v15

    invoke-direct {v0, v8, v12, v14}, Landroidx/wear/widget/BoxInsetLayout;->c(Lava;II)I

    move-result v12

    move/from16 v16, v1

    iget v1, v8, Lava;->width:I

    move/from16 p2, v6

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    add-int/2addr v15, v2

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v13, 0x7

    sparse-switch v1, :sswitch_data_0

    add-int/2addr v15, v2

    goto :goto_2

    :sswitch_0
    sub-int v1, v3, v9

    goto :goto_1

    :sswitch_1
    sub-int v1, v3, v2

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, v15

    :goto_1
    sub-int v15, v1, v12

    :goto_2
    and-int/lit8 v1, v11, 0x70

    invoke-direct {v0, v8, v1, v14}, Landroidx/wear/widget/BoxInsetLayout;->d(Lava;II)I

    move-result v6

    invoke-direct {v0, v8, v1, v14}, Landroidx/wear/widget/BoxInsetLayout;->a(Lava;II)I

    move-result v11

    iget v8, v8, Lava;->height:I

    const/4 v12, -0x1

    if-ne v8, v12, :cond_2

    add-int/2addr v6, v4

    goto :goto_4

    :cond_2
    sparse-switch v1, :sswitch_data_1

    add-int/2addr v6, v4

    goto :goto_4

    :sswitch_2
    sub-int v1, v5, v10

    goto :goto_3

    :sswitch_3
    sub-int v1, v5, v4

    sub-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    :goto_3
    sub-int v6, v1, v11

    :goto_4
    add-int/2addr v9, v15

    add-int/2addr v10, v6

    invoke-virtual {v7, v15, v6, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_3
    move/from16 v16, v1

    move/from16 p2, v6

    :goto_5
    add-int/lit8 v6, p2, 0x1

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final onMeasure(II)V
    .locals 20

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v11, v9, :cond_6

    invoke-virtual {v6, v11}, Landroidx/wear/widget/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lava;

    iget-boolean v2, v6, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    if-eqz v2, :cond_4

    iget v2, v0, Lava;->a:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, v0, Lava;->leftMargin:I

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget v3, v0, Lava;->a:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    iget v3, v0, Lava;->rightMargin:I

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget v4, v0, Lava;->a:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    iget v4, v0, Lava;->topMargin:I

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    iget v5, v0, Lava;->a:I

    and-int/2addr v1, v5

    if-nez v1, :cond_3

    iget v0, v0, Lava;->bottomMargin:I

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    goto :goto_4

    :cond_3
    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    const/16 v16, 0x0

    goto :goto_4

    :cond_4
    iget v2, v0, Lava;->leftMargin:I

    iget v4, v0, Lava;->topMargin:I

    iget v3, v0, Lava;->rightMargin:I

    iget v0, v0, Lava;->bottomMargin:I

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    :goto_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/wear/widget/BoxInsetLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v0, v0, v17

    add-int v0, v0, v18

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v0, v0, v19

    add-int v0, v0, v16

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v14, v0}, Landroidx/wear/widget/BoxInsetLayout;->combineMeasuredStates(II)I

    move-result v14

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v6, Landroidx/wear/widget/BoxInsetLayout;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, v6, Landroidx/wear/widget/BoxInsetLayout;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_7
    invoke-static {v1, v7, v14}, Landroidx/wear/widget/BoxInsetLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v14, 0x10

    invoke-static {v0, v8, v2}, Landroidx/wear/widget/BoxInsetLayout;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v6, v1, v0}, Landroidx/wear/widget/BoxInsetLayout;->setMeasuredDimension(II)V

    invoke-direct {v6, v1, v0}, Landroidx/wear/widget/BoxInsetLayout;->e(II)I

    move-result v0

    :goto_5
    if-ge v10, v9, :cond_b

    invoke-virtual {v6, v10}, Landroidx/wear/widget/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lava;

    iget v3, v2, Lava;->gravity:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    const v3, 0x800033

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingLeft()I

    move-result v4

    iget-object v5, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingRight()I

    move-result v5

    iget-object v11, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingTop()I

    move-result v11

    iget-object v12, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingBottom()I

    move-result v12

    iget-object v13, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    and-int/lit8 v13, v3, 0x7

    invoke-direct {v6, v2, v13, v0}, Landroidx/wear/widget/BoxInsetLayout;->b(Lava;II)I

    move-result v14

    add-int/2addr v4, v5

    add-int/2addr v4, v14

    invoke-direct {v6, v2, v13, v0}, Landroidx/wear/widget/BoxInsetLayout;->c(Lava;II)I

    move-result v5

    add-int/2addr v4, v5

    and-int/lit8 v3, v3, 0x70

    invoke-direct {v6, v2, v3, v0}, Landroidx/wear/widget/BoxInsetLayout;->d(Lava;II)I

    move-result v5

    add-int/2addr v11, v12

    add-int/2addr v11, v5

    invoke-direct {v6, v2, v3, v0}, Landroidx/wear/widget/BoxInsetLayout;->a(Lava;II)I

    move-result v3

    add-int/2addr v11, v3

    iget v3, v2, Lava;->width:I

    invoke-static {v7, v4, v3}, Landroidx/wear/widget/BoxInsetLayout;->getChildMeasureSpec(III)I

    move-result v3

    iget v2, v2, Lava;->height:I

    invoke-static {v8, v11, v2}, Landroidx/wear/widget/BoxInsetLayout;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    if-gt v11, v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v5, v4, :cond_a

    :cond_9
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method public final setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/wear/widget/BoxInsetLayout;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method
