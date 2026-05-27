.class Lagh;
.super Lagm;


# instance fields
.field final a:Landroid/view/WindowInsets;

.field b:Lacr;

.field private c:Lacr;

.field private f:Lago;


# direct methods
.method public constructor <init>(Lago;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lagm;-><init>(Lago;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lagh;->c:Lacr;

    iput-object p2, p0, Lagh;->a:Landroid/view/WindowInsets;

    return-void
.end method

.method private s(IZ)Lacr;
    .locals 6

    sget-object p2, Lacr;->a:Lacr;

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    and-int v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lagh;->b(IZ)Lacr;

    move-result-object v1

    iget v2, p2, Lacr;->b:I

    iget v3, v1, Lacr;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p2, Lacr;->c:I

    iget v4, v1, Lacr;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p2, Lacr;->d:I

    iget v5, v1, Lacr;->d:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget p2, p2, Lacr;->e:I

    iget v1, v1, Lacr;->e:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v2, v3, v4, p2}, Lacr;->c(IIII)Lacr;

    move-result-object p2

    :cond_0
    add-int/2addr v0, v0

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private t()Lacr;
    .locals 1

    iget-object v0, p0, Lagh;->f:Lago;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lago;->g()Lacr;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lacr;->a:Lacr;

    return-object v0
.end method

.method private u(Landroid/view/View;)Lacr;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Lacr;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lagh;->s(IZ)Lacr;

    move-result-object p1

    return-object p1
.end method

.method protected b(IZ)Lacr;
    .locals 2

    const/4 p2, 0x0

    sparse-switch p1, :sswitch_data_0

    sget-object p1, Lacr;->a:Lacr;

    return-object p1

    :sswitch_0
    iget-object p1, p0, Lagh;->f:Lago;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lago;->b:Lagm;

    invoke-virtual {p1}, Lagm;->n()Lael;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lagm;->n()Lael;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lael;->a:Landroid/view/DisplayCutout;

    invoke-static {p2}, Laek;->b(Landroid/view/DisplayCutout;)I

    move-result p2

    iget-object v0, p1, Lael;->a:Landroid/view/DisplayCutout;

    invoke-static {v0}, Laek;->d(Landroid/view/DisplayCutout;)I

    move-result v0

    iget-object v1, p1, Lael;->a:Landroid/view/DisplayCutout;

    invoke-static {v1}, Laek;->c(Landroid/view/DisplayCutout;)I

    move-result v1

    iget-object p1, p1, Lael;->a:Landroid/view/DisplayCutout;

    invoke-static {p1}, Laek;->a(Landroid/view/DisplayCutout;)I

    move-result p1

    invoke-static {p2, v0, v1, p1}, Lacr;->c(IIII)Lacr;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lacr;->a:Lacr;

    return-object p1

    :sswitch_1
    invoke-virtual {p0}, Lagm;->r()Lacr;

    move-result-object p1

    return-object p1

    :sswitch_2
    invoke-virtual {p0}, Lagm;->p()Lacr;

    move-result-object p1

    return-object p1

    :sswitch_3
    invoke-virtual {p0}, Lagm;->q()Lacr;

    move-result-object p1

    return-object p1

    :sswitch_4
    invoke-virtual {p0}, Lagm;->c()Lacr;

    move-result-object p1

    invoke-direct {p0}, Lagh;->t()Lacr;

    move-result-object v0

    iget p1, p1, Lacr;->e:I

    iget v1, v0, Lacr;->e:I

    if-le p1, v1, :cond_2

    invoke-static {p2, p2, p2, p1}, Lacr;->c(IIII)Lacr;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lagh;->b:Lacr;

    if-eqz p1, :cond_3

    sget-object v1, Lacr;->a:Lacr;

    invoke-virtual {p1, v1}, Lacr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lagh;->b:Lacr;

    iget p1, p1, Lacr;->e:I

    iget v0, v0, Lacr;->e:I

    if-le p1, v0, :cond_3

    invoke-static {p2, p2, p2, p1}, Lacr;->c(IIII)Lacr;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Lacr;->a:Lacr;

    return-object p1

    :sswitch_5
    invoke-virtual {p0}, Lagm;->c()Lacr;

    move-result-object p1

    iget-object v0, p0, Lagh;->f:Lago;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lago;->g()Lacr;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget v1, p1, Lacr;->e:I

    if-eqz v0, :cond_5

    iget v0, v0, Lacr;->e:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_5
    :goto_2
    iget v0, p1, Lacr;->b:I

    iget p1, p1, Lacr;->d:I

    invoke-static {v0, p2, p1, v1}, Lacr;->c(IIII)Lacr;

    move-result-object p1

    return-object p1

    :sswitch_6
    invoke-virtual {p0}, Lagm;->c()Lacr;

    move-result-object p1

    iget p1, p1, Lacr;->c:I

    invoke-static {p2, p1, p2, p2}, Lacr;->c(IIII)Lacr;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c()Lacr;
    .locals 4

    iget-object v0, p0, Lagh;->c:Lacr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lagh;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lagh;->a:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lagh;->a:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lagh;->a:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lacr;->c(IIII)Lacr;

    move-result-object v0

    iput-object v0, p0, Lagh;->c:Lacr;

    :cond_0
    iget-object v0, p0, Lagh;->c:Lacr;

    return-object v0
.end method

.method public d(IIII)Lago;
    .locals 2

    iget-object v0, p0, Lagh;->a:Landroid/view/WindowInsets;

    invoke-static {v0}, Lago;->m(Landroid/view/WindowInsets;)Lago;

    move-result-object v0

    new-instance v1, Lagf;

    invoke-direct {v1, v0}, Lagf;-><init>(Lago;)V

    invoke-virtual {p0}, Lagm;->c()Lacr;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lago;->h(Lacr;IIII)Lacr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lagg;->c(Lacr;)V

    invoke-virtual {p0}, Lagm;->j()Lacr;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lago;->h(Lacr;IIII)Lacr;

    move-result-object p1

    invoke-virtual {v1, p1}, Lagg;->b(Lacr;)V

    invoke-virtual {v1}, Lagg;->a()Lago;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lagh;->u(Landroid/view/View;)Lacr;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lacr;->a:Lacr;

    :cond_0
    invoke-virtual {p0, p1}, Lagh;->g(Lacr;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lagm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lagh;

    iget-object v0, p0, Lagh;->b:Lacr;

    iget-object p1, p1, Lagh;->b:Lacr;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f([Lacr;)V
    .locals 0

    return-void
.end method

.method public g(Lacr;)V
    .locals 0

    iput-object p1, p0, Lagh;->b:Lacr;

    return-void
.end method

.method public h(Lago;)V
    .locals 0

    iput-object p1, p0, Lagh;->f:Lago;

    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lagh;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method
