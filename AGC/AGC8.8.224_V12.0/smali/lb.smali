.class public Llb;
.super Lma;


# instance fields
.field private b:Llp;

.field private c:Llp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lma;-><init>()V

    return-void
.end method

.method private final h(Lly;Llp;II)I
    .locals 11

    invoke-virtual {p0, p3, p4}, Lma;->g(II)[I

    move-result-object p3

    invoke-virtual {p1}, Lly;->aj()I

    move-result p4

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p4, :cond_0

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v4, v3

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p4, :cond_5

    invoke-virtual {p1, v7}, Lly;->av(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lly;->be(Landroid/view/View;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    goto :goto_2

    :cond_1
    if-ge v9, v6, :cond_2

    move v10, v9

    goto :goto_1

    :cond_2
    move v10, v6

    :goto_1
    if-ge v9, v6, :cond_3

    move-object v3, v8

    :cond_3
    if-le v9, v5, :cond_4

    move-object v4, v8

    move v5, v9

    :cond_4
    move v6, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_8

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v3}, Llp;->d(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, v4}, Llp;->d(Landroid/view/View;)I

    move-result p4

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, v3}, Llp;->a(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p2, v4}, Llp;->a(Landroid/view/View;)I

    move-result p2

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    int-to-float p1, p2

    int-to-float p2, v5

    div-float v1, p1, p2

    goto :goto_3

    :cond_8
    :goto_3
    const/4 p1, 0x0

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_9

    return v2

    :cond_9
    aget p1, p3, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aget p2, p3, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_a

    aget p1, p3, v2

    goto :goto_4

    :cond_a
    aget p1, p3, v0

    :goto_4
    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private final i(Lly;)Llp;
    .locals 1

    iget-object v0, p0, Llb;->c:Llp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Llp;->a:Lly;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Llp;->p(Lly;)Llp;

    move-result-object p1

    iput-object p1, p0, Llb;->c:Llp;

    :cond_1
    iget-object p1, p0, Llb;->c:Llp;

    return-object p1
.end method

.method private final j(Lly;)Llp;
    .locals 1

    iget-object v0, p0, Llb;->b:Llp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Llp;->a:Lly;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Llp;->r(Lly;)Llp;

    move-result-object p1

    iput-object p1, p0, Llb;->b:Llp;

    :cond_1
    iget-object p1, p0, Llb;->b:Llp;

    return-object p1
.end method

.method private static final k(Landroid/view/View;Llp;)I
    .locals 1

    invoke-virtual {p1, p0}, Llp;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p0}, Llp;->b(Landroid/view/View;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    invoke-virtual {p1}, Llp;->j()I

    move-result p0

    invoke-virtual {p1}, Llp;->k()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method private static final l(Lly;Llp;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Llp;->j()I

    move-result v2

    invoke-virtual {p1}, Llp;->k()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const v4, 0x7fffffff

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Lly;->av(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Llp;->d(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1, v5}, Llp;->b(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    if-ge v6, v4, :cond_2

    move-object v1, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public a(Lly;II)I
    .locals 8

    instance-of v0, p1, Lmj;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lly;->al()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Llb;->b(Lly;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-static {v2}, Lly;->be(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v1

    :cond_3
    move-object v3, p1

    check-cast v3, Lmj;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Lmj;->J(I)Landroid/graphics/PointF;

    move-result-object v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lly;->V()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    invoke-direct {p0, p1}, Llb;->i(Lly;)Llp;

    move-result-object v5

    invoke-direct {p0, p1, v5, p2, v7}, Llb;->h(Lly;Llp;II)I

    move-result p2

    iget v5, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    neg-int p2, p2

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    :cond_6
    :goto_0
    invoke-virtual {p1}, Lly;->W()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, p1}, Llb;->j(Lly;)Llp;

    move-result-object v5

    invoke-direct {p0, p1, v5, v7, p3}, Llb;->h(Lly;Llp;II)I

    move-result p3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_8

    neg-int p3, p3

    goto :goto_1

    :cond_7
    const/4 p3, 0x0

    :cond_8
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p1}, Lly;->W()Z

    move-result p1

    if-ne v3, p1, :cond_9

    move p2, p3

    :cond_9
    if-nez p2, :cond_a

    return v1

    :cond_a
    add-int/2addr v2, p2

    if-gez v2, :cond_b

    goto :goto_2

    :cond_b
    move v7, v2

    :goto_2
    if-lt v7, v0, :cond_c

    return v4

    :cond_c
    return v7
.end method

.method public final b(Lly;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Lly;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Llb;->j(Lly;)Llp;

    move-result-object v0

    invoke-static {p1, v0}, Llb;->l(Lly;Llp;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lly;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Llb;->i(Lly;)Llp;

    move-result-object v0

    invoke-static {p1, v0}, Llb;->l(Lly;Llp;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lly;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Lly;->V()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Llb;->i(Lly;)Llp;

    move-result-object v1

    invoke-static {p2, v1}, Llb;->k(Landroid/view/View;Llp;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Lly;->W()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Llb;->j(Lly;)Llp;

    move-result-object p1

    invoke-static {p2, p1}, Llb;->k(Landroid/view/View;Llp;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method
