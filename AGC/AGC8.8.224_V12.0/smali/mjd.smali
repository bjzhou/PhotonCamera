.class public final Lmjd;
.super Lmja;


# instance fields
.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Lmjl;)V
    .locals 0

    invoke-direct {p0, p1}, Lmja;-><init>(Lmim;)V

    const/high16 p1, 0x43960000    # 300.0f

    iput p1, p0, Lmjd;->c:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lmjd;->a:Lmim;

    check-cast v0, Lmjl;

    iget v0, v0, Lmjl;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmjd;->c:F

    iget-object v0, p0, Lmjd;->a:Lmim;

    check-cast v0, Lmjl;

    iget v0, v0, Lmjl;->a:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object v5, p0, Lmjd;->a:Lmim;

    check-cast v5, Lmjl;

    iget v5, v5, Lmjl;->a:I

    sub-int/2addr p2, v5

    int-to-float p2, p2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p2, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-float/2addr v3, p2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lmjd;->a:Lmim;

    check-cast p2, Lmjl;

    iget-boolean p2, p2, Lmjl;->i:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    iget-object p2, p0, Lmjd;->b:Lmiz;

    invoke-virtual {p2}, Lmiz;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmjd;->a:Lmim;

    check-cast p2, Lmjl;

    iget p2, p2, Lmjl;->e:I

    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    :cond_1
    iget-object p2, p0, Lmjd;->b:Lmiz;

    invoke-virtual {p2}, Lmiz;->f()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lmjd;->a:Lmim;

    check-cast p2, Lmjl;

    iget p2, p2, Lmjl;->f:I

    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    iget-object p2, p0, Lmjd;->b:Lmiz;

    invoke-virtual {p2}, Lmiz;->g()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lmjd;->b:Lmiz;

    invoke-virtual {p2}, Lmiz;->f()Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    iget-object p2, p0, Lmjd;->a:Lmim;

    check-cast p2, Lmjl;

    iget p2, p2, Lmjl;->a:I

    int-to-float p2, p2

    add-float/2addr v2, p3

    mul-float p2, p2, v2

    div-float/2addr p2, v5

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_5
    iget p2, p0, Lmjd;->c:F

    neg-float v1, p2

    div-float/2addr v1, v5

    neg-float v2, v0

    div-float/2addr v2, v5

    div-float/2addr p2, v5

    div-float/2addr v0, v5

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object p1, p0, Lmjd;->a:Lmim;

    check-cast p1, Lmjl;

    iget p2, p1, Lmjl;->a:I

    int-to-float p2, p2

    mul-float p2, p2, p3

    iput p2, p0, Lmjd;->d:F

    iget p1, p1, Lmjl;->b:I

    int-to-float p1, p1

    mul-float p1, p1, p3

    iput p1, p0, Lmjd;->e:F

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .locals 5

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lmjd;->c:F

    neg-float v1, v0

    iget v2, p0, Lmjd;->e:F

    add-float/2addr v2, v2

    sub-float/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    mul-float p3, p3, v0

    mul-float p4, p4, v0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p5, Landroid/graphics/RectF;

    iget v0, p0, Lmjd;->d:F

    neg-float v4, v0

    div-float/2addr v0, v3

    add-float/2addr p4, v1

    div-float/2addr v4, v3

    add-float/2addr p4, v2

    add-float/2addr v1, p3

    invoke-direct {p5, v1, v4, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lmjd;->e:F

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    iget-object v0, p0, Lmjd;->a:Lmim;

    check-cast v0, Lmjl;

    iget v0, v0, Lmjl;->d:I

    iget-object v1, p0, Lmjd;->b:Lmiz;

    iget v1, v1, Lmiz;->i:I

    invoke-static {v0, v1}, Lkwp;->k(II)I

    move-result v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lmjd;->c:F

    neg-float v2, v1

    iget v3, p0, Lmjd;->d:F

    neg-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    div-float/2addr v3, v5

    div-float/2addr v2, v5

    div-float/2addr v4, v5

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lmjd;->e:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
