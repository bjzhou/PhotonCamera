.class public final Liww;
.super Llb;


# instance fields
.field public b:I

.field private final c:F

.field private final d:F

.field private e:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Llb;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Liww;->b:I

    iput p1, p0, Liww;->c:F

    iput p2, p0, Liww;->d:F

    return-void
.end method


# virtual methods
.method public final a(Lly;II)I
    .locals 3

    invoke-super {p0, p1, p2, p3}, Llb;->a(Lly;II)I

    move-result p2

    iget-object p3, p0, Liww;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Lly;->al()I

    move-result v0

    if-eqz p3, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Llb;->b(Lly;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return p2

    :cond_1
    invoke-static {v1}, Lly;->be(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return p2

    :cond_2
    invoke-virtual {p1}, Lly;->W()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lly;->V()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    div-int/2addr p1, v0

    sub-int p3, p2, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    mul-int p1, p1, p3

    iput p1, p0, Liww;->b:I

    return p2

    :cond_5
    :goto_1
    return p2
.end method

.method public final c(Lly;Landroid/view/View;)[I
    .locals 3

    invoke-super {p0, p1, p2}, Llb;->c(Lly;Landroid/view/View;)[I

    move-result-object v0

    invoke-static {p1, p2}, Lkba;->o(Lly;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    const/4 p2, 0x0

    aget v1, v0, p2

    iget v2, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    aput v1, v0, p2

    const/4 p2, 0x1

    aget v1, v0, p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, p1

    aput v1, v0, p2

    return-object v0
.end method

.method public final d(Lly;)Lmk;
    .locals 7

    iget-object v0, p0, Liww;->e:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v6, Lixd;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Liww;->c:F

    iget v3, p0, Liww;->d:F

    new-instance v4, Ldvo;

    const/16 v0, 0x9

    invoke-direct {v4, p0, p1, v0}, Ldvo;-><init>(Liww;Lly;I)V

    new-instance v5, Ldet;

    const/16 p1, 0x8

    invoke-direct {v5, p0, p1}, Ldet;-><init>(Liww;I)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lixd;-><init>(Landroid/content/Context;FFLmqi;Lmrl;)V

    return-object v6
.end method

.method public final e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Llb;->e(Landroid/support/v7/widget/RecyclerView;)V

    iput-object p1, p0, Liww;->e:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public final g(II)[I
    .locals 5

    invoke-super {p0, p1, p2}, Llb;->g(II)[I

    move-result-object p1

    iget-object p2, p0, Liww;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget-object v2, p2, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Lls;->a()I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v2, v2, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    :goto_0
    div-int/lit8 v4, v4, 0x2

    mul-int v4, v4, v2

    :goto_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p2

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    aget v3, p1, v1

    neg-int v4, v2

    invoke-static {v3, v4, v2}, Laax;->d(III)I

    move-result v2

    aput v2, p1, v1

    aget v2, p1, v0

    neg-int v3, p2

    invoke-static {v2, v3, p2}, Laax;->d(III)I

    move-result p2

    aput p2, p1, v0

    :cond_3
    aget p2, p1, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    aget v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Liww;->b:I

    return-object p1
.end method
