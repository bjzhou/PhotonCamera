.class public final Lhym;
.super Lhyw;


# direct methods
.method public constructor <init>(Lhyt;Lzy;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lhyw;-><init>(Lhyt;Lzy;Landroid/content/res/Resources;)V

    return-void
.end method

.method private final A()I
    .locals 2

    iget-object v0, p0, Lhym;->f:Liko;

    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final B()I
    .locals 3

    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lhym;->f:Liko;

    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lhym;->h:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v1, v5

    iget-object v2, p0, Lhym;->d:Landroid/content/res/Resources;

    const v3, 0x7f0706a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int v6, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    div-int/lit8 v7, v0, 0x2

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lhyw;->v(IIIII)V

    return-void

    :cond_1
    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

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
    .locals 3

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0}, Lhym;->A()I

    move-result v0

    iget-object v1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v2, 0x7f070164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lhym;->c:Lzy;

    invoke-virtual {v1, p1, v0}, Lzy;->i(II)V

    iget-object v0, p0, Lhym;->c:Lzy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lzy;->j(II)V

    iget-object v0, p0, Lhym;->c:Lzy;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1, v2}, Lzy;->g(IIII)V

    invoke-virtual {p0, p1, v1, v1, v1}, Lhyw;->s(IIII)V

    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lhym;->e:Lika;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lhyo;->c(Lika;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhym;->f:Liko;

    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v6, 0x7f0b0236

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lhyw;->u(IIIII)V

    return-void

    :cond_1
    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v6, 0x7f0b0087

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lhyw;->u(IIIII)V

    :cond_2
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0}, Lhym;->A()I

    move-result v0

    iget-object v1, p0, Lhym;->c:Lzy;

    invoke-virtual {v1, p1, v0}, Lzy;->i(II)V

    iget-object v0, p0, Lhym;->c:Lzy;

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v7}, Lzy;->j(II)V

    iget-object v1, p0, Lhym;->c:Lzy;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

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

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lhym;->A()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lhym;->d:Landroid/content/res/Resources;

    const v3, 0x7f0706c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lhym;->c:Lzy;

    invoke-virtual {v2, p1, v0}, Lzy;->j(II)V

    iget-object v0, p0, Lhym;->c:Lzy;

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v7}, Lzy;->i(II)V

    iget-object v0, p0, Lhym;->c:Lzy;

    const/4 v3, 0x4

    const v4, 0x7f0b0236

    const/4 v5, 0x3

    neg-int v6, v1

    move-object v1, v0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lzy;->h(IIIII)V

    iget-object v0, p0, Lhym;->c:Lzy;

    const/4 v1, 0x3

    const v2, 0x7f0b03f6

    invoke-virtual {v0, p1, v1, v2, v1}, Lzy;->g(IIII)V

    const v0, 0x7f0b0236

    invoke-virtual {p0, p1, v0, v7, v7}, Lhyw;->s(IIII)V

    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lhym;->f:Liko;

    invoke-static {v1}, Liko;->e(Liko;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v6, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v6, v1

    :goto_0
    iget-object v1, p0, Lhym;->f:Liko;

    invoke-static {v1}, Liko;->e(Liko;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lhym;->e:Lika;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, p1}, Lhyo;->c(Lika;Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x1

    if-eq v1, p1, :cond_2

    const p1, 0x7f0b0236

    goto :goto_1

    :cond_2
    const p1, 0x7f0b0233

    :goto_1
    iget-object v1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p0}, Lhym;->B()I

    move-result v1

    add-int v8, v1, v7

    iget-object v1, p0, Lhym;->c:Lzy;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x3

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lzy;->h(IIIII)V

    iget-object v1, p0, Lhym;->c:Lzy;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2, p1, v3}, Lzy;->g(IIII)V

    iget-object v1, p0, Lhym;->c:Lzy;

    const v4, 0x7f0b0482

    const/4 v5, 0x6

    move v2, v0

    move v3, v5

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lzy;->h(IIIII)V

    iget-object v1, p0, Lhym;->c:Lzy;

    const/4 v4, 0x0

    const/4 v5, 0x7

    move v3, v5

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lzy;->h(IIIII)V

    invoke-virtual {p0, v0}, Lhyw;->t(I)V

    return-void

    :cond_3
    iget-object p1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706af

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v1, p0, Lhym;->c:Lzy;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x3

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lzy;->h(IIIII)V

    iget-object v1, p0, Lhym;->c:Lzy;

    const/4 v3, 0x4

    const v4, 0x7f0b0482

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lzy;->h(IIIII)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Lhyw;->s(IIII)V

    invoke-virtual {p0, v0}, Lhyw;->t(I)V

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhym;->o(Landroid/view/View;)V

    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhym;->o(Landroid/view/View;)V

    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhym;->g:Landroid/util/Size;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lhym;->f:Liko;

    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lhym;->f:Liko;

    invoke-static {v1}, Liko;->e(Liko;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lhym;->d:Landroid/content/res/Resources;

    const v3, 0x7f0706ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v3, p0, Lhym;->c:Lzy;

    invoke-virtual {v3, p1, v2}, Lzy;->i(II)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lhyw;->s(IIII)V

    iget-object v0, p0, Lhym;->c:Lzy;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, v2, v1}, Lzy;->g(IIII)V

    iget-object v0, p0, Lhym;->c:Lzy;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1, v2, v1}, Lzy;->g(IIII)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public final l(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhym;->n(Landroid/view/View;)V

    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lhym;->g:Landroid/util/Size;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0, v0, v1}, Lhyw;->r(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0}, Lhym;->B()I

    move-result v1

    iget-object v2, p0, Lhym;->f:Liko;

    invoke-static {v2}, Liko;->e(Liko;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v5, v2

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    move v5, v2

    :goto_0
    iget-object v2, p0, Lhym;->f:Liko;

    invoke-static {v2}, Liko;->e(Liko;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lhym;->h:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    iget-object v1, p0, Lhym;->f:Liko;

    invoke-static {v1}, Liko;->e(Liko;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v7, v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v7, v1

    :goto_2
    invoke-direct {p0}, Lhym;->A()I

    move-result v1

    iget-object v2, p0, Lhym;->d:Landroid/content/res/Resources;

    const v3, 0x7f070164

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lhym;->f:Liko;

    invoke-static {v2}, Liko;->e(Liko;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lhym;->d:Landroid/content/res/Resources;

    const v3, 0x7f0706a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lhym;->d:Landroid/content/res/Resources;

    const v4, 0x7f0706ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lhym;->d:Landroid/content/res/Resources;

    const v4, 0x7f0706b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lhym;->d:Landroid/content/res/Resources;

    const v4, 0x7f0706d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_4
    iget-object v2, p0, Lhym;->e:Lika;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lhyo;->c(Lika;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lhym;->d:Landroid/content/res/Resources;

    const v3, 0x7f07044f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    move v8, v1

    goto :goto_3

    :cond_5
    move v8, v1

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object p1, p0, Lhym;->h:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    sub-int v6, p1, v0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lhyw;->w(IIIII)V

    return-void

    :cond_6
    :goto_4
    return-void
.end method

.method public final o(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lhym;->g:Landroid/util/Size;

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

    invoke-virtual {p0, p1}, Lhym;->o(Landroid/view/View;)V

    return-void
.end method

.method public final q(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lhym;->f:Liko;

    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int v6, v5, v0

    iget-object v0, p0, Lhym;->h:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    div-int/lit8 v7, v0, 0x2

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lhyw;->v(IIIII)V

    return-void

    :cond_1
    iget-object v0, p0, Lhym;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lhym;->e:Lika;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lhyo;->c(Lika;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v2, 0x7f07044f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    move v7, v0

    goto :goto_0

    :cond_2
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
    .locals 2

    invoke-super {p0, p1, p2}, Lhyw;->r(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lhym;->f:Liko;

    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v0, 0x7f0706b8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput p1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhym;->f:Liko;

    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-lt v0, p1, :cond_1

    iget-object p1, p0, Lhym;->d:Landroid/content/res/Resources;

    const v0, 0x7f0706b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput p1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    return-object p2
.end method
