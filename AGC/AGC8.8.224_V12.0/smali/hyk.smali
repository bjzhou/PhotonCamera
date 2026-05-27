.class public final Lhyk;
.super Lhyw;


# instance fields
.field private final i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lhyt;Lzy;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lhyw;-><init>(Lhyt;Lzy;Landroid/content/res/Resources;)V

    iget-object p1, p1, Lhyt;->a:Lhys;

    iget-object p1, p1, Lhys;->e:Ljava/lang/Integer;

    iput-object p1, p0, Lhyk;->i:Ljava/lang/Integer;

    return-void
.end method

.method private final A()I
    .locals 3

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lhyk;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private final B()Z
    .locals 3

    iget-object v0, p0, Lhyk;->i:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhyk;->f:Liko;

    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lhyk;->f:Liko;

    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhyk;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lhyk;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lhyk;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhyk;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lhyk;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v1, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v1, p0, Lhyk;->h:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-direct {p0}, Lhyk;->B()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lhyk;->h:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v2

    add-int/2addr v2, v5

    move v8, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lhyk;->h:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    move v8, v2

    :goto_1
    sub-int v7, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lhyw;->v(IIIII)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v2, 0x7f070164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lhyk;->c:Lzy;

    invoke-virtual {v1, p1, v0}, Lzy;->i(II)V

    iget-object v0, p0, Lhyk;->c:Lzy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lzy;->j(II)V

    iget-object v0, p0, Lhyk;->c:Lzy;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1, v2}, Lzy;->g(IIII)V

    invoke-virtual {p0, p1, v1, v1, v1}, Lhyw;->s(IIII)V

    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lhyk;->e:Lika;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lhyo;->c(Lika;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v6, 0x7f0b0236

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lhyw;->u(IIIII)V

    :cond_1
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lhyk;->c:Lzy;

    invoke-virtual {v1, p1, v0}, Lzy;->i(II)V

    iget-object v0, p0, Lhyk;->c:Lzy;

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v7}, Lzy;->j(II)V

    iget-object v1, p0, Lhyk;->c:Lzy;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

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

    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v3, 0x7f0706c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lhyk;->c:Lzy;

    invoke-virtual {v2, p1, v0}, Lzy;->j(II)V

    iget-object v0, p0, Lhyk;->c:Lzy;

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v7}, Lzy;->i(II)V

    iget-object v0, p0, Lhyk;->c:Lzy;

    const/4 v3, 0x4

    const v4, 0x7f0b0236

    const/4 v5, 0x3

    neg-int v6, v1

    move-object v1, v0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lzy;->h(IIIII)V

    iget-object v0, p0, Lhyk;->c:Lzy;

    const/4 v1, 0x3

    const v2, 0x7f0b03f6

    invoke-virtual {v0, p1, v1, v2, v1}, Lzy;->g(IIII)V

    const v0, 0x7f0b0236

    invoke-virtual {p0, p1, v0, v7, v7}, Lhyw;->s(IIII)V

    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 14

    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p0}, Lhyk;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lhyk;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    invoke-direct {p0}, Lhyk;->B()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lhyk;->A()I

    move-result v2

    add-int/2addr v2, v7

    move v13, v2

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v3, 0x7f0706c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v13, v2

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v2, p0, Lhyk;->c:Lzy;

    const v5, 0x7f0b0482

    const/4 v6, 0x6

    move v3, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Lzy;->h(IIIII)V

    iget-object v8, p0, Lhyk;->c:Lzy;

    const/4 v11, 0x0

    const/4 v12, 0x7

    move v9, p1

    move v10, v12

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    invoke-virtual {p0, p1, v0, v1}, Lhyw;->z(III)V

    invoke-virtual {p0, p1}, Lhyw;->t(I)V

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhyk;->o(Landroid/view/View;)V

    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhyk;->o(Landroid/view/View;)V

    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhyk;->g:Landroid/util/Size;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lhyk;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v5, v0

    :goto_0
    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    add-int v1, v5, v5

    sub-int v3, v0, v1

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p0}, Lhyk;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v6, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    move v6, v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lhyw;->v(IIIII)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public final l(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhyk;->n(Landroid/view/View;)V

    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lhyk;->g:Landroid/util/Size;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lhyw;->r(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0}, Lhyk;->A()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lhyk;->h:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0}, Lhyk;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v7, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v7, v1

    :goto_0
    iget-object v1, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v2, 0x7f0706c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lhyk;->e:Lika;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lhyo;->c(Lika;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v3, 0x7f07044f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object p1, p0, Lhyk;->h:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    sub-int v6, p1, v0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lhyw;->w(IIIII)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public final o(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lhyk;->g:Landroid/util/Size;

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

    invoke-virtual {p0, p1}, Lhyk;->o(Landroid/view/View;)V

    return-void
.end method

.method public final q(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {p0}, Lhyk;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    add-int v6, v5, v0

    invoke-direct {p0}, Lhyk;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v0

    move v7, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lhyk;->h:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    move v7, v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lhyw;->v(IIIII)V

    return-void
.end method

.method public final r(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 3

    invoke-super {p0, p1, p2}, Lhyw;->r(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0}, Lhyk;->B()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lhyk;->d:Landroid/content/res/Resources;

    const v1, 0x7f0706d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p2

    invoke-direct {v0, v1, p2, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
