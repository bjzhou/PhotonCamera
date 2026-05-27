.class public Llr;
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

.method private final h(Lly;)Llp;
    .locals 1

    iget-object v0, p0, Llr;->c:Llp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Llp;->a:Lly;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Llp;->p(Lly;)Llp;

    move-result-object p1

    iput-object p1, p0, Llr;->c:Llp;

    :cond_1
    iget-object p1, p0, Llr;->c:Llp;

    return-object p1
.end method

.method private final i(Lly;)Llp;
    .locals 1

    iget-object v0, p0, Llr;->b:Llp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Llp;->a:Lly;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Llp;->r(Lly;)Llp;

    move-result-object p1

    iput-object p1, p0, Llr;->b:Llp;

    :cond_1
    iget-object p1, p0, Llr;->b:Llp;

    return-object p1
.end method

.method private static final j(Landroid/view/View;Llp;)I
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

.method private static final k(Lly;Llp;)Landroid/view/View;
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
.method public final a(Lly;II)I
    .locals 12

    invoke-virtual {p1}, Lly;->al()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lly;->W()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Llr;->i(Lly;)Llp;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lly;->V()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Llr;->h(Lly;)Llp;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lly;->aj()I

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    move-object v6, v3

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_5

    invoke-virtual {p1, v9}, Lly;->av(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {v10, v2}, Llr;->j(Landroid/view/View;Llp;)I

    move-result v11

    if-gtz v11, :cond_3

    if-le v11, v8, :cond_3

    move-object v6, v10

    move v8, v11

    :cond_3
    if-ltz v11, :cond_4

    if-ge v11, v7, :cond_4

    move-object v3, v10

    move v7, v11

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lly;->V()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    if-lez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    if-lez p3, :cond_7

    const/4 p2, 0x1

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_9

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v3}, Lly;->be(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_9
    :goto_3
    if-nez p2, :cond_b

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v6}, Lly;->be(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_b
    :goto_4
    if-ne v4, p2, :cond_c

    move-object v3, v6

    :cond_c
    if-nez v3, :cond_d

    return v1

    :cond_d
    invoke-static {v3}, Lly;->be(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p1}, Lly;->al()I

    move-result v2

    instance-of v3, p1, Lmj;

    if-eqz v3, :cond_f

    check-cast p1, Lmj;

    add-int/2addr v2, v1

    invoke-interface {p1, v2}, Lmj;->J(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_f

    iget v2, p1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_e

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_f

    :cond_e
    const/4 v5, 0x1

    goto :goto_5

    :cond_f
    :goto_5
    if-ne v5, p2, :cond_10

    const/4 v4, -0x1

    :cond_10
    add-int/2addr p3, v4

    if-ltz p3, :cond_12

    if-lt p3, v0, :cond_11

    goto :goto_6

    :cond_11
    return p3

    :cond_12
    :goto_6
    return v1

    :cond_13
    return v1
.end method

.method public b(Lly;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Lly;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Llr;->i(Lly;)Llp;

    move-result-object v0

    invoke-static {p1, v0}, Llr;->k(Lly;Llp;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lly;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Llr;->h(Lly;)Llp;

    move-result-object v0

    invoke-static {p1, v0}, Llr;->k(Lly;Llp;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Lly;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Lly;->V()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Llr;->h(Lly;)Llp;

    move-result-object v1

    invoke-static {p2, v1}, Llr;->j(Landroid/view/View;Llp;)I

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

    invoke-direct {p0, p1}, Llr;->i(Lly;)Llp;

    move-result-object p1

    invoke-static {p2, p1}, Llr;->j(Landroid/view/View;Llp;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method public final d(Lly;)Lmk;
    .locals 1

    instance-of p1, p1, Lmj;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Llq;

    iget-object v0, p0, Llr;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Llq;-><init>(Llr;Landroid/content/Context;)V

    return-object p1
.end method
