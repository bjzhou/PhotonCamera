.class public Landroidx/wear/widget/ArcLayout;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:Z

.field private final f:Lauw;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/ArcLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/ArcLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/wear/widget/ArcLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/wear/widget/ArcLayout;->a:I

    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, p0, Landroidx/wear/widget/ArcLayout;->d:F

    new-instance v1, Lauw;

    invoke-direct {v1}, Lauw;-><init>()V

    iput-object v1, p0, Landroidx/wear/widget/ArcLayout;->f:Lauw;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/wear/widget/ArcLayout;->g:Landroid/view/View;

    sget-object v1, Lauv;->a:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Landroidx/wear/widget/ArcLayout;->b:I

    const/4 p3, 0x0

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Landroidx/wear/widget/ArcLayout;->c:F

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/wear/widget/ArcLayout;->e:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final a(Landroid/view/View;)F
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laux;

    instance-of v1, p1, Lauy;

    if-eqz v1, :cond_0

    check-cast p1, Lauy;

    invoke-interface {p1}, Lauy;->b()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_0
    iget v2, p0, Landroidx/wear/widget/ArcLayout;->a:I

    iget v3, v0, Laux;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Laux;->bottomMargin:I

    sub-int/2addr v2, v3

    iget-boolean v3, p0, Landroidx/wear/widget/ArcLayout;->e:Z

    if-eqz v3, :cond_1

    iget v3, v0, Laux;->topMargin:I

    goto :goto_1

    :cond_1
    iget v3, v0, Laux;->bottomMargin:I

    :goto_1
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredHeight()I

    move-result v6

    if-lt v1, v6, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v1, v6

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    int-to-float v3, v3

    sub-int/2addr v2, p1

    iget p1, v0, Laux;->b:I

    add-float/2addr v3, v1

    packed-switch p1, :pswitch_data_0

    return v5

    :pswitch_0
    int-to-float p1, v2

    :goto_3
    add-float/2addr v3, p1

    return v3

    :pswitch_1
    int-to-float p1, v2

    div-float/2addr p1, v4

    goto :goto_3

    :pswitch_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(FF)F
    .locals 0

    div-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    add-double/2addr p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private final c(Landroid/view/View;Lauw;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    iput p1, p2, Lauw;->a:F

    iput p1, p2, Lauw;->b:F

    iput p1, p2, Lauw;->c:F

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/wear/widget/ArcLayout;->a:I

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Laux;

    iget v3, v2, Laux;->leftMargin:I

    int-to-float v3, v3

    sub-float/2addr v0, v1

    invoke-static {v3, v0}, Landroidx/wear/widget/ArcLayout;->b(FF)F

    move-result v1

    iput v1, p2, Lauw;->a:F

    iget v1, v2, Laux;->rightMargin:I

    int-to-float v1, v1

    invoke-static {v1, v0}, Landroidx/wear/widget/ArcLayout;->b(FF)F

    move-result v1

    iput v1, p2, Lauw;->b:F

    instance-of v1, p1, Lauy;

    if-eqz v1, :cond_1

    check-cast p1, Lauy;

    invoke-interface {p1}, Lauy;->a()F

    move-result p1

    iput p1, p2, Lauw;->c:F

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1, v0}, Landroidx/wear/widget/ArcLayout;->b(FF)F

    move-result p1

    iput p1, p2, Lauw;->c:F

    return-void
.end method

.method private final d(Landroid/view/View;F[F)V
    .locals 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Laux;

    instance-of v2, p1, Lauy;

    if-eqz v2, :cond_0

    neg-float p2, p2

    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
    iget v2, v1, Laux;->d:F

    neg-float v2, v2

    iget v3, v1, Laux;->e:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-boolean v1, v1, Laux;->a:Z

    if-eqz v1, :cond_1

    neg-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p2, p2

    int-to-float p1, p1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method


# virtual methods
.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Laux;

    return p1
.end method

.method protected final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laux;

    iget v1, v0, Laux;->c:F

    instance-of v2, p2, Lauy;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object v0, p2

    check-cast v0, Lauy;

    invoke-interface {v0}, Lauy;->c()V

    goto :goto_2

    :cond_0
    iget-boolean v2, v0, Laux;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iget-boolean v4, p0, Landroidx/wear/widget/ArcLayout;->e:Z

    if-eq v2, v4, :cond_1

    const/high16 v3, 0x43340000    # 180.0f

    goto :goto_0

    :cond_1
    :goto_0
    add-float/2addr v3, v1

    goto :goto_1

    :cond_2
    :goto_1
    iget v1, v0, Laux;->d:F

    iget v0, v0, Laux;->e:F

    invoke-virtual {p1, v3, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2
.end method

.method protected final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Laux;

    invoke-direct {v0}, Laux;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Laux;

    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Laux;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Laux;

    invoke-direct {v0, p1}, Laux;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Landroidx/wear/widget/ArcLayout;->g:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/wear/widget/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Laux;

    iget v4, v4, Laux;->c:F

    const/4 v5, 0x2

    new-array v5, v5, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    aput v6, v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    aput v6, v5, v1

    invoke-direct {p0, v3, v4, v5}, Landroidx/wear/widget/ArcLayout;->d(Landroid/view/View;F[F)V

    aget v4, v5, v0

    aget v5, v5, v1

    instance-of v6, v3, Lauy;

    if-eqz v6, :cond_1

    move-object v6, v3

    check-cast v6, Lauy;

    invoke-interface {v6, v4, v5}, Lauy;->e(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-ltz v7, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    cmpl-float v4, v5, v6

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v5, v4

    if-gez v4, :cond_2

    :goto_1
    iput-object v3, p0, Landroidx/wear/widget/ArcLayout;->g:Landroid/view/View;

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return v1
.end method

.method protected final onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/ArcLayout;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget-boolean v4, v0, Landroidx/wear/widget/ArcLayout;->e:Z

    iget v5, v0, Landroidx/wear/widget/ArcLayout;->b:I

    if-eq v4, v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    :goto_1
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    if-nez v5, :cond_2

    iget v3, v0, Landroidx/wear/widget/ArcLayout;->c:F

    mul-float v3, v3, v1

    goto :goto_5

    :cond_2
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/ArcLayout;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_4

    invoke-virtual {v0, v5}, Landroidx/wear/widget/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Laux;

    iget v11, v11, Laux;->f:F

    cmpl-float v11, v11, v6

    if-lez v11, :cond_3

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    const/4 v11, 0x1

    :goto_3
    xor-int/2addr v11, v3

    or-int/2addr v8, v11

    iget-object v11, v0, Landroidx/wear/widget/ArcLayout;->f:Lauw;

    invoke-direct {v0, v10, v11}, Landroidx/wear/widget/ArcLayout;->c(Landroid/view/View;Lauw;)V

    iget-object v10, v0, Landroidx/wear/widget/ArcLayout;->f:Lauw;

    invoke-virtual {v10}, Lauw;->a()F

    move-result v10

    add-float/2addr v9, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    iget v5, v0, Landroidx/wear/widget/ArcLayout;->d:F

    cmpg-float v8, v9, v5

    if-gez v8, :cond_5

    move v9, v5

    :cond_5
    iget v5, v0, Landroidx/wear/widget/ArcLayout;->b:I

    if-ne v5, v3, :cond_6

    iget v3, v0, Landroidx/wear/widget/ArcLayout;->c:F

    mul-float v3, v3, v1

    div-float/2addr v9, v7

    :goto_4
    sub-float/2addr v3, v9

    goto :goto_5

    :cond_6
    if-ne v5, v4, :cond_7

    iget v3, v0, Landroidx/wear/widget/ArcLayout;->c:F

    mul-float v3, v3, v1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_5
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/ArcLayout;->getChildCount()I

    move-result v10

    const/16 v11, 0x8

    if-ge v5, v10, :cond_a

    invoke-virtual {v0, v5}, Landroidx/wear/widget/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v11, :cond_9

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Laux;

    iget v11, v11, Laux;->f:F

    cmpl-float v12, v11, v6

    if-lez v12, :cond_8

    add-float/2addr v8, v11

    iget-object v11, v0, Landroidx/wear/widget/ArcLayout;->f:Lauw;

    invoke-direct {v0, v10, v11}, Landroidx/wear/widget/ArcLayout;->c(Landroid/view/View;Lauw;)V

    iget-object v10, v0, Landroidx/wear/widget/ArcLayout;->f:Lauw;

    iget v11, v10, Lauw;->a:F

    iget v10, v10, Lauw;->b:F

    add-float/2addr v11, v10

    add-float/2addr v9, v11

    goto :goto_7

    :cond_8
    iget-object v11, v0, Landroidx/wear/widget/ArcLayout;->f:Lauw;

    invoke-direct {v0, v10, v11}, Landroidx/wear/widget/ArcLayout;->c(Landroid/view/View;Lauw;)V

    iget-object v10, v0, Landroidx/wear/widget/ArcLayout;->f:Lauw;

    invoke-virtual {v10}, Lauw;->a()F

    move-result v10

    add-float/2addr v9, v10

    :cond_9
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    cmpl-float v5, v8, v6

    if-lez v5, :cond_b

    iget v5, v0, Landroidx/wear/widget/ArcLayout;->d:F

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/ArcLayout;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_10

    invoke-virtual {v0, v2}, Landroidx/wear/widget/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v11, :cond_f

    iget-object v9, v0, Landroidx/wear/widget/ArcLayout;->f:Lauw;

    invoke-direct {v0, v8, v9}, Landroidx/wear/widget/ArcLayout;->c(Landroid/view/View;Lauw;)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Laux;

    iget v10, v9, Laux;->f:F

    cmpl-float v12, v10, v6

    if-lez v12, :cond_d

    iget-object v12, v0, Landroidx/wear/widget/ArcLayout;->f:Lauw;

    mul-float v10, v10, v5

    iput v10, v12, Lauw;->c:F

    instance-of v12, v8, Lauy;

    if-eqz v12, :cond_c

    move-object v12, v8

    check-cast v12, Lauy;

    invoke-interface {v12, v10}, Lauy;->d(F)V

    goto :goto_9

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ArcLayout.LayoutParams with non zero weights are only supported for views implementing ArcLayout.Widget"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_9
    iget-object v10, v0, Landroidx/wear/widget/ArcLayout;->f:Lauw;

    iget v12, v10, Lauw;->a:F

    iget v10, v10, Lauw;->c:F

    div-float/2addr v10, v7

    add-float/2addr v12, v10

    add-float/2addr v12, v3

    mul-float v12, v12, v1

    iput v12, v9, Laux;->c:F

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v10, v13

    invoke-direct {v0, v8}, Landroidx/wear/widget/ArcLayout;->a(Landroid/view/View;)F

    move-result v13

    div-int/2addr v10, v4

    int-to-float v10, v10

    sub-float/2addr v10, v13

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    float-to-double v14, v12

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    move/from16 p2, v5

    float-to-double v4, v10

    const-wide v16, 0x4066800000000000L    # 180.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v4

    div-float/2addr v13, v7

    float-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v12, v16

    double-to-float v10, v12

    iput v10, v9, Laux;->d:F

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v12

    div-float/2addr v10, v7

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v4

    double-to-float v4, v12

    iput v4, v9, Laux;->e:F

    iget-object v4, v0, Landroidx/wear/widget/ArcLayout;->f:Lauw;

    invoke-virtual {v4}, Lauw;->a()F

    move-result v4

    add-float/2addr v3, v4

    instance-of v4, v8, Lauy;

    if-eqz v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/ArcLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    sub-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v8, v4, v5, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_a

    :cond_e
    iget v4, v9, Laux;->d:F

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v9, Laux;->e:F

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    sub-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v8, v4, v5, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_a

    :cond_f
    move/from16 p2, v5

    :goto_a
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, p2

    const/4 v4, 0x2

    goto/16 :goto_8

    :cond_10
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move v11, v1

    move v1, v0

    move v0, v11

    :cond_0
    if-ge v0, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    if-ge v1, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v11, v1

    move v1, v0

    move v0, v11

    :goto_0
    div-int/lit8 v2, v0, 0x2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getChildCount()I

    move-result v8

    const/16 v9, 0x8

    if-ge v5, v8, :cond_5

    invoke-virtual {p0, v5}, Landroidx/wear/widget/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v9, :cond_3

    goto :goto_3

    :cond_3
    instance-of v9, v8, Lauy;

    if-eqz v9, :cond_4

    move-object v9, v8

    check-cast v9, Lauy;

    invoke-interface {v9}, Lauy;->b()I

    move-result v9

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v4, v9}, Landroidx/wear/widget/ArcLayout;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v4, v10}, Landroidx/wear/widget/ArcLayout;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Landroidx/wear/widget/ArcLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v7, v10}, Landroidx/wear/widget/ArcLayout;->combineMeasuredStates(II)I

    move-result v7

    :goto_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Laux;

    iget v10, v8, Laux;->topMargin:I

    add-int/2addr v9, v10

    iget v8, v8, Laux;->bottomMargin:I

    add-int/2addr v9, v8

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iput v6, p0, Landroidx/wear/widget/ArcLayout;->a:I

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-virtual {p0, v3}, Landroidx/wear/widget/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v9, :cond_6

    instance-of v6, v5, Lauy;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Laux;

    invoke-direct {p0, v5}, Landroidx/wear/widget/ArcLayout;->a(Landroid/view/View;)F

    move-result v8

    add-int v10, v2, v2

    add-float/2addr v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v10, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v10, v6, Laux;->width:I

    invoke-static {v8, v4, v10}, Landroidx/wear/widget/ArcLayout;->getChildMeasureSpec(III)I

    move-result v10

    iget v6, v6, Laux;->height:I

    invoke-static {v8, v4, v6}, Landroidx/wear/widget/ArcLayout;->getChildMeasureSpec(III)I

    move-result v6

    invoke-virtual {p0, v5, v10, v6}, Landroidx/wear/widget/ArcLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v7, v5}, Landroidx/wear/widget/ArcLayout;->combineMeasuredStates(II)I

    move-result v5

    move v7, v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v1, p1, v7}, Landroidx/wear/widget/ArcLayout;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v0, p2, v7}, Landroidx/wear/widget/ArcLayout;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/wear/widget/ArcLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/wear/widget/ArcLayout;->g:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v2, p0, Landroidx/wear/widget/ArcLayout;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Laux;

    iget-object v4, p0, Landroidx/wear/widget/ArcLayout;->g:Landroid/view/View;

    iget v2, v2, Laux;->c:F

    invoke-direct {p0, v4, v2, v0}, Landroidx/wear/widget/ArcLayout;->d(Landroid/view/View;F[F)V

    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Landroidx/wear/widget/ArcLayout;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/wear/widget/ArcLayout;->g:Landroid/view/View;

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public final requestLayout()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/wear/widget/ArcLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/wear/widget/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
