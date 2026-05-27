.class public final Lhyl;
.super Lhyw;


# direct methods
.method public constructor <init>(Lhyt;Lzy;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lhyw;-><init>(Lhyt;Lzy;Landroid/content/res/Resources;)V

    return-void
.end method

.method private final A()Landroid/util/Size;
    .locals 3

    iget-object v0, p0, Lhyl;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lhyl;->h:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lhyl;->h:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhyl;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v6, 0x7f0b0236

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lhyw;->u(IIIII)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhyl;->f(Landroid/view/View;)V

    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhyl;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v0, p0, Lhyl;->e:Lika;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lhyo;->c(Lika;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v6, 0x7f0b0087

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lhyw;->u(IIIII)V

    :cond_1
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhyl;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f070272

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lhyl;->c:Lzy;

    invoke-virtual {v1, p1, v0}, Lzy;->i(II)V

    iget-object v0, p0, Lhyl;->c:Lzy;

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v7}, Lzy;->j(II)V

    iget-object v1, p0, Lhyl;->c:Lzy;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v2, 0x7f070164

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lzy;->h(IIIII)V

    invoke-virtual {p0, p1, v7, v7, v7}, Lhyw;->s(IIII)V

    return-void
.end method

.method public final g(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhyl;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v2, 0x7f070272

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v3, 0x7f0706c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lhyl;->c:Lzy;

    invoke-virtual {v2, p1, v0}, Lzy;->j(II)V

    iget-object v0, p0, Lhyl;->c:Lzy;

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v7}, Lzy;->i(II)V

    iget-object v0, p0, Lhyl;->c:Lzy;

    const/4 v3, 0x4

    const v4, 0x7f0b0236

    const/4 v5, 0x3

    neg-int v6, v1

    move-object v1, v0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lzy;->h(IIIII)V

    iget-object v1, p0, Lhyl;->c:Lzy;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {p0}, Lhyl;->A()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lzy;->h(IIIII)V

    const v0, 0x7f0b0236

    invoke-virtual {p0, p1, v0, v7, v7}, Lhyw;->s(IIII)V

    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhyl;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f070273

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f070274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p0}, Lhyl;->A()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int v6, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    move-object v2, p0

    move v4, v5

    invoke-virtual/range {v2 .. v7}, Lhyw;->w(IIIII)V

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhyl;->o(Landroid/view/View;)V

    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhyl;->o(Landroid/view/View;)V

    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lhyl;->h:Landroid/util/Size;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyl;->g:Landroid/util/Size;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lhyl;->A()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v2, 0x7f070276

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int v2, v7, v7

    sub-int v5, v1, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lhyw;->v(IIIII)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhyl;->o(Landroid/view/View;)V

    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhyl;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v6, 0x7f0b0482

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lhyw;->u(IIIII)V

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhyl;->o(Landroid/view/View;)V

    return-void
.end method

.method public final o(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lhyl;->h:Landroid/util/Size;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lhyl;->g:Landroid/util/Size;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lhyw;->r(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lhyw;->v(IIIII)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final p(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhyl;->o(Landroid/view/View;)V

    return-void
.end method

.method public final q(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhyl;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lhyl;->e:Lika;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lhyo;->c(Lika;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhyl;->d:Landroid/content/res/Resources;

    const v2, 0x7f07044f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    move v7, v0

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v6, 0x7f0b0087

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lhyw;->u(IIIII)V

    return-void
.end method

.method public final r(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lhyl;->A()Landroid/util/Size;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lhyw;->r(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method
