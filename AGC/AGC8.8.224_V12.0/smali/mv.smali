.class public abstract Lmv;
.super Llv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llv;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract e(Lmo;Lmo;IIII)Z
.end method

.method public abstract f(Lmo;IIII)Z
.end method

.method public abstract i(Lmo;)V
.end method

.method public abstract j(Lmo;)V
.end method

.method public final n(Lmo;)Z
    .locals 0

    invoke-virtual {p1}, Lmo;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p(Lmo;Laev;Laev;)Z
    .locals 6

    if-eqz p2, :cond_1

    iget v2, p2, Laev;->b:I

    iget v4, p3, Laev;->b:I

    if-ne v2, v4, :cond_0

    iget v0, p2, Laev;->a:I

    iget v1, p3, Laev;->a:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v3, p2, Laev;->a:I

    iget v5, p3, Laev;->a:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmv;->f(Lmo;IIII)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lmv;->i(Lmo;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final q(Lmo;Lmo;Laev;Laev;)Z
    .locals 7

    iget v3, p3, Laev;->b:I

    iget v4, p3, Laev;->a:I

    invoke-virtual {p2}, Lmo;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p4, p3, Laev;->b:I

    iget p3, p3, Laev;->a:I

    move v6, p3

    move v5, p4

    goto :goto_0

    :cond_0
    iget p3, p4, Laev;->b:I

    iget p4, p4, Laev;->a:I

    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lmv;->e(Lmo;Lmo;IIII)Z

    move-result p1

    return p1
.end method

.method public final r(Lmo;Laev;Laev;)Z
    .locals 6

    iget v2, p2, Laev;->b:I

    iget v3, p2, Laev;->a:I

    iget-object p2, p1, Lmo;->a:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    iget v0, p3, Laev;->b:I

    move v4, v0

    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    move v5, p3

    goto :goto_1

    :cond_1
    iget p3, p3, Laev;->a:I

    move v5, p3

    :goto_1
    invoke-virtual {p1}, Lmo;->u()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v2, v4, :cond_2

    if-eq v3, v5, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmv;->f(Lmo;IIII)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0, p1}, Lmv;->j(Lmo;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final s(Lmo;Laev;Laev;)Z
    .locals 6

    iget v2, p2, Laev;->b:I

    iget v4, p3, Laev;->b:I

    if-ne v2, v4, :cond_1

    iget v0, p2, Laev;->a:I

    iget v1, p3, Laev;->a:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Llv;->l(Lmo;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget v3, p2, Laev;->a:I

    iget v5, p3, Laev;->a:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmv;->f(Lmo;IIII)Z

    move-result p1

    return p1
.end method
