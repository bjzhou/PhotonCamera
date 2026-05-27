.class public abstract Lhyw;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lhyt;

.field protected final b:Lhyq;

.field protected final c:Lzy;

.field protected final d:Landroid/content/res/Resources;

.field protected final e:Lika;

.field protected final f:Liko;

.field public final g:Landroid/util/Size;

.field public final h:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lhyt;Lzy;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lhyt;->a:Lhys;

    iput-object p1, p0, Lhyw;->a:Lhyt;

    iget-object p1, p1, Lhyt;->b:Lhyq;

    iput-object p1, p0, Lhyw;->b:Lhyq;

    iget-object p1, v0, Lhys;->h:Lika;

    iput-object p1, p0, Lhyw;->e:Lika;

    iget-object p1, v0, Lhys;->g:Liko;

    iput-object p1, p0, Lhyw;->f:Liko;

    iget-object p1, v0, Lhys;->d:Landroid/util/Size;

    iput-object p1, p0, Lhyw;->g:Landroid/util/Size;

    iget-object p1, v0, Lhys;->b:Landroid/util/Size;

    iput-object p1, p0, Lhyw;->h:Landroid/util/Size;

    iput-object p2, p0, Lhyw;->c:Lzy;

    iput-object p3, p0, Lhyw;->d:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method public c(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lhyw;->h:Landroid/util/Size;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object p1, p0, Lhyw;->h:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object p1, p0, Lhyw;->h:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lhyw;->v(IIIII)V

    return-void
.end method

.method public abstract d(Landroid/view/View;)V
.end method

.method public abstract e(Landroid/view/View;)V
.end method

.method public abstract f(Landroid/view/View;)V
.end method

.method public abstract g(Landroid/view/View;)V
.end method

.method public abstract h(Landroid/view/View;)V
.end method

.method public abstract i(Landroid/view/View;)V
.end method

.method public abstract j(Landroid/view/View;)V
.end method

.method public abstract k(Landroid/view/View;)V
.end method

.method public abstract l(Landroid/view/View;)V
.end method

.method public abstract m(Landroid/view/View;)V
.end method

.method public abstract n(Landroid/view/View;)V
.end method

.method public abstract o(Landroid/view/View;)V
.end method

.method public abstract p(Landroid/view/View;)V
.end method

.method public abstract q(Landroid/view/View;)V
.end method

.method public r(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v2

    div-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v2, v3

    mul-float v2, v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v1, v3

    mul-float v1, v1, v4

    float-to-int v1, v1

    :goto_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v3, v4

    div-float/2addr v5, p2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpg-float p2, v3, v5

    if-gez p2, :cond_2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    sub-int/2addr p1, v2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v6

    double-to-int p1, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v6

    double-to-int p1, p1

    move v0, p1

    const/4 p1, 0x0

    :goto_1
    add-int/2addr v1, v0

    add-int/2addr v2, p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, p1, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2

    :cond_3
    :goto_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method protected final s(IIII)V
    .locals 11

    iget-object v0, p0, Lhyw;->c:Lzy;

    const/4 v4, 0x6

    move v1, p1

    move v2, v4

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lzy;->h(IIIII)V

    iget-object v5, p0, Lhyw;->c:Lzy;

    const/4 v9, 0x7

    move v6, p1

    move v7, v9

    move v8, p2

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lzy;->h(IIIII)V

    return-void
.end method

.method protected final t(I)V
    .locals 2

    iget-object v0, p0, Lhyw;->c:Lzy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lzy;->i(II)V

    iget-object v0, p0, Lhyw;->c:Lzy;

    invoke-virtual {v0, p1, v1}, Lzy;->j(II)V

    return-void
.end method

.method protected final u(IIIII)V
    .locals 6

    iget-object v0, p0, Lhyw;->c:Lzy;

    invoke-virtual {v0, p1, p3}, Lzy;->i(II)V

    iget-object p3, p0, Lhyw;->c:Lzy;

    invoke-virtual {p3, p1, p2}, Lzy;->j(II)V

    iget-object v0, p0, Lhyw;->c:Lzy;

    const/4 v2, 0x4

    const/4 v4, 0x3

    move v1, p1

    move v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lzy;->h(IIIII)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, p2, p2}, Lhyw;->s(IIII)V

    return-void
.end method

.method protected final v(IIIII)V
    .locals 6

    iget-object v0, p0, Lhyw;->c:Lzy;

    invoke-virtual {v0, p1, p3}, Lzy;->i(II)V

    iget-object v0, p0, Lhyw;->c:Lzy;

    invoke-virtual {v0, p1, p2}, Lzy;->j(II)V

    iget-object v0, p0, Lhyw;->c:Lzy;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x3

    move v1, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lzy;->h(IIIII)V

    iget-object v0, p0, Lhyw;->c:Lzy;

    const/4 v4, 0x6

    move v2, v4

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lzy;->h(IIIII)V

    return-void
.end method

.method protected final w(IIIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lhyw;->s(IIII)V

    invoke-virtual {p0, p1, p4, p5}, Lhyw;->z(III)V

    invoke-virtual {p0, p1}, Lhyw;->t(I)V

    return-void
.end method

.method protected final x(ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lhyw;->y(ILandroid/graphics/Rect;Z)V

    return-void
.end method

.method protected final y(ILandroid/graphics/Rect;Z)V
    .locals 10

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eqz p3, :cond_0

    sget-object p3, Liko;->a:Liko;

    iget-object p3, p0, Lhyw;->f:Liko;

    invoke-virtual {p3}, Liko;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int v2, p2, v1

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int v3, p2, v0

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    goto :goto_1

    :cond_0
    :goto_0
    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    :goto_1
    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v9}, Lhyw;->v(IIIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final z(III)V
    .locals 11

    iget-object v0, p0, Lhyw;->c:Lzy;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x3

    move v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lzy;->h(IIIII)V

    iget-object v5, p0, Lhyw;->c:Lzy;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x4

    move v6, p1

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lzy;->h(IIIII)V

    return-void
.end method
