.class public Landroidx/percentlayout/widget/PercentRelativeLayout;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lane;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lane;

    invoke-direct {p1, p0}, Lane;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Lane;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lane;

    invoke-direct {p1, p0}, Lane;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Lane;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lane;

    invoke-direct {p1, p0}, Lane;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Lane;

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)Lanf;
    .locals 2

    new-instance v0, Lanf;

    invoke-virtual {p0}, Landroidx/percentlayout/widget/PercentRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lanf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lanf;

    invoke-direct {v0}, Lanf;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/percentlayout/widget/PercentRelativeLayout;->a(Landroid/util/AttributeSet;)Lanf;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/percentlayout/widget/PercentRelativeLayout;->a(Landroid/util/AttributeSet;)Lanf;

    move-result-object p1

    return-object p1
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Lane;

    iget-object p2, p1, Lane;->a:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    iget-object p4, p1, Lane;->a:Landroid/view/ViewGroup;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p5, p4, Lanf;

    if-eqz p5, :cond_1

    move-object p5, p4

    check-cast p5, Lanf;

    invoke-virtual {p5}, Lanf;->a()Lanc;

    move-result-object p5

    if-eqz p5, :cond_1

    instance-of v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p5, p4}, Lanc;->b(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p5, Lanc;->j:Land;

    iget v0, v0, Land;->leftMargin:I

    iput v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p5, Lanc;->j:Land;

    iget v0, v0, Land;->topMargin:I

    iput v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p5, Lanc;->j:Land;

    iget v0, v0, Land;->rightMargin:I

    iput v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v0, p5, Lanc;->j:Land;

    iget v0, v0, Land;->bottomMargin:I

    iput v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p5, Lanc;->j:Land;

    invoke-static {v0}, Laeo;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    invoke-static {p4, v0}, Laeo;->g(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    iget-object p5, p5, Lanc;->j:Land;

    invoke-static {p5}, Laeo;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p5

    invoke-static {p4, p5}, Laeo;->f(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p5, p4}, Lanc;->b(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 13

    iget-object v0, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Lane;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, v0, Lane;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lane;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-object v3, v0, Lane;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lane;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lane;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v5, v3, :cond_8

    iget-object v8, v0, Lane;->a:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Lanf;

    if-eqz v10, :cond_7

    move-object v10, v9

    check-cast v10, Lanf;

    invoke-virtual {v10}, Lanf;->a()Lanc;

    move-result-object v10

    if-eqz v10, :cond_7

    instance-of v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_6

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v10, v9, v1, v2}, Lanc;->a(Landroid/view/ViewGroup$LayoutParams;II)V

    iget-object v11, v10, Lanc;->j:Land;

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v12, v11, Land;->leftMargin:I

    iget-object v11, v10, Lanc;->j:Land;

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v12, v11, Land;->topMargin:I

    iget-object v11, v10, Lanc;->j:Land;

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v12, v11, Land;->rightMargin:I

    iget-object v11, v10, Lanc;->j:Land;

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v12, v11, Land;->bottomMargin:I

    iget-object v11, v10, Lanc;->j:Land;

    invoke-static {v9}, Laeo;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v12

    invoke-static {v11, v12}, Laeo;->g(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    iget-object v11, v10, Lanc;->j:Land;

    invoke-static {v9}, Laeo;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v12

    invoke-static {v11, v12}, Laeo;->f(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    iget v11, v10, Lanc;->c:F

    cmpl-float v12, v11, v7

    if-ltz v12, :cond_0

    int-to-float v12, v1

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    iget v11, v10, Lanc;->d:F

    cmpl-float v12, v11, v7

    if-ltz v12, :cond_1

    int-to-float v12, v2

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    iget v11, v10, Lanc;->e:F

    cmpl-float v12, v11, v7

    if-ltz v12, :cond_2

    int-to-float v12, v1

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_2
    iget v11, v10, Lanc;->f:F

    cmpl-float v12, v11, v7

    if-ltz v12, :cond_3

    int-to-float v12, v2

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_3
    iget v11, v10, Lanc;->g:F

    cmpl-float v12, v11, v7

    if-ltz v12, :cond_4

    int-to-float v12, v1

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v9, v11}, Laeo;->g(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    iget v10, v10, Lanc;->h:F

    cmpl-float v7, v10, v7

    if-ltz v7, :cond_5

    int-to-float v6, v1

    mul-float v6, v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v9, v6}, Laeo;->f(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_7

    :goto_2
    if-eqz v8, :cond_7

    invoke-static {v8}, Lafc;->c(Landroid/view/View;)I

    move-result v6

    invoke-static {v9, v6}, Laeo;->d(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v10, v9, v1, v2}, Lanc;->a(Landroid/view/ViewGroup$LayoutParams;II)V

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget-object v0, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Lane;

    iget-object v1, v0, Lane;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_4
    if-ge v4, v1, :cond_b

    iget-object v3, v0, Lane;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v8, v5, Lanf;

    if-eqz v8, :cond_a

    move-object v8, v5

    check-cast v8, Lanf;

    invoke-virtual {v8}, Lanf;->a()Lanc;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v9

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    const/high16 v11, 0x1000000

    const/4 v12, -0x2

    if-ne v9, v11, :cond_9

    iget v9, v8, Lanc;->a:F

    cmpl-float v9, v9, v7

    if-ltz v9, :cond_9

    iget-object v9, v8, Lanc;->j:Land;

    iget v9, v9, Land;->width:I

    if-ne v9, v12, :cond_9

    iput v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v3

    and-int/2addr v3, v10

    if-ne v3, v11, :cond_a

    iget v3, v8, Lanc;->b:F

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_a

    iget-object v3, v8, Lanc;->j:Land;

    iget v3, v3, Land;->height:I

    if-ne v3, v12, :cond_a

    iput v12, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    if-eqz v2, :cond_c

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :cond_c
    return-void
.end method
