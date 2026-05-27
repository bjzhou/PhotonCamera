.class final Llo;
.super Llp;


# direct methods
.method public constructor <init>(Lly;)V
    .locals 0

    invoke-direct {p0, p1}, Llp;-><init>(Lly;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    invoke-static {p1}, Lly;->bo(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Llz;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    invoke-static {p1}, Lly;->bb(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Llz;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Llz;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final c(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    invoke-static {p1}, Lly;->bc(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Llz;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Llz;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final d(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    invoke-static {p1}, Lly;->br(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Llz;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Llo;->a:Lly;

    iget v0, v0, Lly;->B:I

    return v0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Llo;->a:Lly;

    iget v1, v0, Lly;->B:I

    invoke-virtual {v0}, Lly;->ap()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Llo;->a:Lly;

    invoke-virtual {v0}, Lly;->ap()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Llo;->a:Lly;

    iget v0, v0, Lly;->z:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Llo;->a:Lly;

    iget v0, v0, Lly;->y:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Llo;->a:Lly;

    invoke-virtual {v0}, Lly;->as()I

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 2

    iget-object v0, p0, Llo;->a:Lly;

    iget v1, v0, Lly;->B:I

    invoke-virtual {v0}, Lly;->as()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Llo;->a:Lly;

    invoke-virtual {v0}, Lly;->ap()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final l(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Llo;->a:Lly;

    iget-object v1, p0, Llo;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lly;->bi(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Llo;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public final m(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Llo;->a:Lly;

    iget-object v1, p0, Llo;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lly;->bi(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Llo;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Llo;->a:Lly;

    invoke-virtual {v0, p1}, Lly;->aG(I)V

    return-void
.end method
