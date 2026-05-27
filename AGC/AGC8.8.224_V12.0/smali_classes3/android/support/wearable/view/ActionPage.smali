.class public Landroid/support/wearable/view/ActionPage;
.super Landroid/view/ViewGroup;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lou;

.field private b:Lox;

.field private c:I

.field private d:F

.field private final e:Landroid/graphics/Point;

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f150568

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    new-instance v2, Lox;

    invoke-direct {v2, v1}, Lox;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    new-instance v2, Lou;

    invoke-direct {v2, v1}, Lou;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lou;->a(I)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lou;->b(I)V

    sget-object v2, Lny;->b:[I

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual {v1, v5, v2, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v12, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-ge v10, v15, :cond_1a

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v15

    const/4 v6, 0x7

    if-ne v15, v6, :cond_0

    iget-object v15, v0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v15, Lox;->b:Landroid/content/res/ColorStateList;

    iget-object v6, v15, Lox;->a:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget-object v15, v15, Lox;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x4

    if-ne v15, v6, :cond_4

    iget-object v15, v0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v4, v15, Lox;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iget-object v4, v15, Lox;->c:Landroid/graphics/drawable/Drawable;

    if-eq v4, v6, :cond_2

    iput-object v6, v15, Lox;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Lox;->requestLayout()V

    invoke-virtual {v15}, Lox;->invalidate()V

    :cond_2
    iget-object v4, v15, Lox;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v15}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0xe

    if-ne v15, v4, :cond_6

    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v6, Lox;->e:I

    iget-object v4, v6, Lox;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    invoke-virtual {v6}, Lox;->invalidate()V

    invoke-virtual {v6}, Lox;->requestLayout()V

    :cond_5
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0xd

    if-ne v15, v4, :cond_7

    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    const/4 v15, -0x1

    invoke-virtual {v2, v4, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v6, v4}, Lox;->b(I)V

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_7
    if-ne v15, v3, :cond_8

    iget-object v4, v0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {v4, v6}, Lox;->a(F)V

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x5

    if-ne v15, v4, :cond_b

    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v15, v6, Lou;->c:Ljava/lang/CharSequence;

    invoke-static {v15, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    iput-object v7, v6, Lou;->a:Landroid/text/Layout;

    iput-object v4, v6, Lou;->c:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Lou;->requestLayout()V

    invoke-virtual {v6}, Lou;->invalidate()V

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can not set ActionLabel text to null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const/16 v4, 0x10

    if-ne v15, v4, :cond_d

    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    const/high16 v15, 0x41200000    # 10.0f

    invoke-virtual {v2, v4, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v6}, Lou;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v5, v4, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iget v15, v6, Lou;->f:F

    cmpl-float v15, v4, v15

    if-eqz v15, :cond_c

    iput-object v7, v6, Lou;->a:Landroid/text/Layout;

    iput v4, v6, Lou;->f:F

    invoke-virtual {v6}, Lou;->requestLayout()V

    invoke-virtual {v6}, Lou;->invalidate()V

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0xf

    if-ne v15, v4, :cond_f

    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    const/high16 v15, 0x42700000    # 60.0f

    invoke-virtual {v2, v4, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v6}, Lou;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v5, v4, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iget v15, v6, Lou;->g:F

    cmpl-float v15, v4, v15

    if-eqz v15, :cond_e

    iput-object v7, v6, Lou;->a:Landroid/text/Layout;

    iput v4, v6, Lou;->g:F

    invoke-virtual {v6}, Lou;->requestLayout()V

    invoke-virtual {v6}, Lou;->invalidate()V

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v4, 0x2

    if-ne v15, v4, :cond_11

    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    if-eqz v15, :cond_10

    iput-object v15, v6, Lou;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Lou;->e()V

    const/4 v6, 0x1

    goto :goto_1

    :cond_10
    throw v7

    :cond_11
    const/4 v4, 0x6

    if-ne v15, v4, :cond_12

    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    const/4 v15, 0x2

    invoke-virtual {v2, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v6, v4}, Lou;->b(I)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_12
    const/4 v4, 0x2

    const/16 v6, 0xa

    if-ne v15, v6, :cond_13

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x1

    goto :goto_1

    :cond_13
    if-nez v15, :cond_14

    invoke-virtual {v2, v5, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    const/4 v6, 0x1

    goto :goto_1

    :cond_14
    const/4 v6, 0x1

    if-ne v15, v6, :cond_15

    invoke-virtual {v2, v6, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    goto :goto_1

    :cond_15
    const/4 v4, 0x3

    if-ne v15, v4, :cond_16

    iget-object v15, v0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v15, v4}, Lou;->a(I)V

    goto :goto_1

    :cond_16
    const/16 v4, 0x8

    if-ne v15, v4, :cond_17

    invoke-virtual {v2, v4, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    goto :goto_1

    :cond_17
    const/16 v4, 0x9

    if-ne v15, v4, :cond_18

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    move v9, v4

    goto :goto_1

    :cond_18
    const/16 v4, 0xc

    if-ne v15, v4, :cond_19

    iget-object v15, v0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v1, v4}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v4

    invoke-virtual {v15, v4}, Lox;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_19
    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, v0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    iget v2, v1, Lou;->e:F

    cmpl-float v2, v2, v11

    if-nez v2, :cond_1b

    iget v2, v1, Lou;->d:F

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_1c

    :cond_1b
    iput v11, v1, Lou;->e:F

    iput v9, v1, Lou;->d:F

    iget-object v2, v1, Lou;->a:Landroid/text/Layout;

    if-eqz v2, :cond_1c

    iput-object v7, v1, Lou;->a:Landroid/text/Layout;

    invoke-virtual {v1}, Lou;->requestLayout()V

    invoke-virtual {v1}, Lou;->invalidate()V

    :cond_1c
    iget-object v1, v0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    invoke-virtual {v1, v12, v13, v14}, Lou;->d(Ljava/lang/String;II)V

    iget-object v1, v0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ActionPage;->addView(Landroid/view/View;)V

    iget-object v1, v0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ActionPage;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->j:Z

    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->h:Z

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->h:Z

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->requestLayout()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/ActionPage;->i:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->i:I

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->requestLayout()V

    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->h:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/wearable/view/ActionPage;->i:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3dc00000    # 0.09375f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->i:I

    :cond_2
    return-object p1
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 3

    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    iget-object p3, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p5, p0, Landroid/support/wearable/view/ActionPage;->d:F

    sub-float/2addr p3, p5

    iget-object p5, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    iget p5, p5, Landroid/graphics/Point;->y:I

    int-to-float p5, p5

    iget v0, p0, Landroid/support/wearable/view/ActionPage;->d:F

    sub-float/2addr p5, v0

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/wearable/view/ActionPage;->d:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/wearable/view/ActionPage;->d:F

    add-float/2addr v1, v2

    float-to-int p3, p3

    float-to-int p5, p5

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p1, p3, p5, v0, v1}, Lox;->layout(IIII)V

    sub-int/2addr p4, p2

    iget p1, p0, Landroid/support/wearable/view/ActionPage;->f:I

    sub-int/2addr p4, p1

    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    iget-object p2, p0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    invoke-virtual {p2}, Lox;->getBottom()I

    move-result p2

    int-to-float p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    iget p4, p0, Landroid/support/wearable/view/ActionPage;->f:I

    add-int/2addr p4, p3

    iget-object p5, p0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    invoke-virtual {p5}, Lox;->getBottom()I

    move-result p5

    iget v0, p0, Landroid/support/wearable/view/ActionPage;->g:I

    add-int/2addr p5, v0

    invoke-virtual {p1, p3, p2, p4, p5}, Lou;->layout(IIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    iget v1, v0, Lox;->e:I

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lox;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lox;->measure(II)V

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    invoke-virtual {v0}, Lox;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    invoke-virtual {v1}, Lox;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->c:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->d:F

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->c:I

    int-to-float v1, v0

    div-float/2addr v1, v3

    iput v1, p0, Landroid/support/wearable/view/ActionPage;->d:F

    iget-object v1, p0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v2, p0, Landroid/support/wearable/view/ActionPage;->c:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lox;->measure(II)V

    :goto_0
    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    div-int/lit8 v2, p1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    int-to-float p2, p2

    const/high16 v0, 0x3f200000    # 0.625f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/support/wearable/view/ActionPage;->f:I

    int-to-float p2, p1

    const/high16 v0, 0x3dc00000    # 0.09375f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/support/wearable/view/ActionPage;->i:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    int-to-float v2, p1

    const v3, 0x3edc28f6    # 0.43f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    int-to-float p2, p2

    const v0, 0x3f645a1d    # 0.892f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/support/wearable/view/ActionPage;->f:I

    :goto_1
    int-to-float p1, p1

    iget-object p2, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget v0, p0, Landroid/support/wearable/view/ActionPage;->d:F

    add-float/2addr p2, v0

    iget v0, p0, Landroid/support/wearable/view/ActionPage;->i:I

    int-to-float v0, v0

    sub-float/2addr p1, p2

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroid/support/wearable/view/ActionPage;->g:I

    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->a:Lou;

    iget p2, p0, Landroid/support/wearable/view/ActionPage;->f:I

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v0, p0, Landroid/support/wearable/view/ActionPage;->g:I

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lou;->measure(II)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lox;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setStateListAnimator(Landroid/animation/StateListAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->b:Lox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lox;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_0
    return-void
.end method
