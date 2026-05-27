.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;


# instance fields
.field a:Z

.field b:I

.field c:[I

.field d:[Landroid/view/View;

.field final e:Landroid/util/SparseIntArray;

.field final f:Landroid/util/SparseIntArray;

.field final g:Landroid/graphics/Rect;

.field final h:Lbby;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    new-instance v0, Lbby;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbby;-><init>([C)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Lbby;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->at(Landroid/content/Context;Landroid/util/AttributeSet;II)Llx;

    move-result-object p1

    iget p1, p1, Llx;->b:I

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    if-lez p1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0}, Lbby;->k()V

    invoke-virtual {p0}, Lly;->aP()V

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Span count should be at least 1. Provided "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final bA()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lly;->A:I

    invoke-virtual {p0}, Lly;->ar()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lly;->aq()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lly;->B:I

    invoke-virtual {p0}, Lly;->ap()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lly;->as()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->bw(I)V

    return-void
.end method

.method private final bt(Lmd;Lml;I)I
    .locals 0

    iget-boolean p2, p2, Lml;->g:Z

    if-nez p2, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-static {p3, p1}, Lbby;->l(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, p3}, Lmd;->a(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1
    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-static {p1, p2}, Lbby;->l(II)I

    move-result p1

    return p1
.end method

.method private final bu(Lmd;Lml;I)I
    .locals 1

    iget-boolean p2, p2, Lml;->g:Z

    if-nez p2, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    rem-int/2addr p3, p1

    return p3

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1, p3}, Lmd;->a(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_2
    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    rem-int/2addr p1, p2

    return p1
.end method

.method private final bv(Lmd;Lml;I)I
    .locals 2

    iget-boolean p2, p2, Lml;->g:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v1, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1, p3}, Lmd;->a(I)I

    move-result p1

    if-ne p1, v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method private final bw(I)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-eqz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-ne v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x1

    aget v2, v0, v3

    if-eq v2, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    :cond_1
    const/4 v2, 0x0

    aput v2, v0, v2

    div-int v3, p1, v1

    rem-int/2addr p1, v1

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-gt v5, v1, :cond_3

    add-int/2addr v2, p1

    if-lez v2, :cond_2

    sub-int v6, v1, v2

    if-ge v6, p1, :cond_2

    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    add-int/2addr v4, v6

    aput v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    return-void
.end method

.method private final bx()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    array-length v0, v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    return-void
.end method

.method private final by(Landroid/view/View;IZ)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lku;

    iget-object v1, v0, Lku;->d:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Lku;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lku;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Lku;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Lku;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Lku;->a:I

    iget v4, v0, Lku;->b:I

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(II)I

    move-result v1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget v4, v0, Lku;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->ak(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v1}, Llp;->k()I

    move-result v1

    iget v3, p0, Lly;->z:I

    iget v0, v0, Lku;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroid/support/v7/widget/GridLayoutManager;->ak(IIIIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v4, v0, Lku;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->ak(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v1}, Llp;->k()I

    move-result v1

    iget v2, p0, Lly;->y:I

    iget v0, v0, Lku;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroid/support/v7/widget/GridLayoutManager;->ak(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/GridLayoutManager;->bz(Landroid/view/View;IIZ)V

    return-void
.end method

.method private final bz(Landroid/view/View;IIZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    if-eqz p4, :cond_2

    iget-boolean p4, p0, Lly;->u:Z

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget v2, v0, Llz;->width:I

    invoke-static {p4, p2, v2}, Lly;->aW(III)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget v0, v0, Llz;->height:I

    invoke-static {p4, p3, v0}, Lly;->aW(III)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lly;->aZ(Landroid/view/View;IILlz;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lmd;Lml;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    return p1

    :cond_0
    invoke-virtual {p2}, Lml;->a()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Lml;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->bt(Lmd;Lml;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final b(Lmd;Lml;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    return p1

    :cond_0
    invoke-virtual {p2}, Lml;->a()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Lml;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->bt(Lmd;Lml;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final c(II)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    sub-int/2addr v1, p1

    aget p1, v0, v1

    sub-int/2addr v1, p2

    aget p2, v0, v1

    sub-int/2addr p1, p2

    return p1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public final d(ILmd;Lml;)I
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bA()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bx()V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILmd;Lml;)I

    move-result p1

    return p1
.end method

.method public final e(ILmd;Lml;)I
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bA()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bx()V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->e(ILmd;Lml;)I

    move-result p1

    return p1
.end method

.method public final f()Llz;
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Lku;

    invoke-direct {v0, v1, v2}, Lku;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lku;

    invoke-direct {v0, v2, v1}, Lku;-><init>(II)V

    return-object v0
.end method

.method public final g(Landroid/view/ViewGroup$LayoutParams;)Llz;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lku;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lku;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lku;

    invoke-direct {v0, p1}, Lku;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final h(Landroid/content/Context;Landroid/util/AttributeSet;)Llz;
    .locals 1

    new-instance v0, Lku;

    invoke-direct {v0, p1, p2}, Lku;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final i(Lmd;Lml;ZZ)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lly;->aj()I

    move-result p3

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lly;->aj()I

    move-result p3

    const/4 p4, -0x1

    add-int/2addr p3, p4

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    const/4 v0, 0x0

    move p4, p3

    const/4 p3, 0x0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2}, Lml;->a()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->P()V

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v2}, Llp;->j()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v3}, Llp;->f()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-eq p3, p4, :cond_6

    invoke-virtual {p0, p3}, Lly;->av(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/GridLayoutManager;->be(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5

    if-ge v7, v1, :cond_5

    invoke-direct {p0, p1, p2, v7}, Landroid/support/v7/widget/GridLayoutManager;->bu(Lmd;Lml;I)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Llz;

    invoke-virtual {v7}, Llz;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_3

    :cond_2
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v7, v6}, Llp;->d(Landroid/view/View;)I

    move-result v7

    if-ge v7, v3, :cond_4

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v7, v6}, Llp;->a(Landroid/view/View;)I

    move-result v7

    if-ge v7, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    move-object v4, v6

    :cond_5
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    return-object v4

    :cond_7
    return-object v5
.end method

.method public final j(Landroid/view/View;ILmd;Lml;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Lly;->au(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lku;

    iget v6, v5, Lku;->a:I

    iget v5, v5, Lku;->b:I

    add-int/2addr v5, v6

    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/view/View;ILmd;Lml;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v4

    :cond_1
    move/from16 v7, p2

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/LinearLayoutManager;->F(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    :goto_0
    iget-boolean v10, v0, Landroid/support/v7/widget/GridLayoutManager;->k:Z

    const/4 v11, -0x1

    if-eq v7, v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Lly;->aj()I

    move-result v7

    add-int/2addr v7, v11

    const/4 v10, -0x1

    const/4 v12, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lly;->aj()I

    move-result v7

    move v10, v7

    const/4 v7, 0x0

    const/4 v12, 0x1

    :goto_1
    iget v13, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v13, v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->Y()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    invoke-direct {v0, v1, v2, v7}, Landroid/support/v7/widget/GridLayoutManager;->bt(Lmd;Lml;I)I

    move-result v14

    move v11, v7

    move/from16 v16, v12

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    move-object v7, v4

    :goto_3
    if-eq v11, v10, :cond_16

    move/from16 v17, v10

    invoke-direct {v0, v1, v2, v11}, Landroid/support/v7/widget/GridLayoutManager;->bt(Lmd;Lml;I)I

    move-result v10

    invoke-virtual {v0, v11}, Lly;->av(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_5

    goto/16 :goto_c

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_6

    if-eq v10, v14, :cond_6

    if-nez v4, :cond_16

    move-object/from16 v18, v3

    move/from16 v19, v9

    move/from16 v21, v14

    goto/16 :goto_a

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lku;

    iget v2, v10, Lku;->a:I

    move-object/from16 v18, v3

    iget v3, v10, Lku;->b:I

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_8

    if-ne v2, v6, :cond_8

    if-eq v3, v5, :cond_7

    goto :goto_4

    :cond_7
    return-object v1

    :cond_8
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_a

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v19, v9

    move/from16 v21, v14

    goto :goto_9

    :cond_a
    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_b

    if-nez v7, :cond_b

    move/from16 v19, v9

    move/from16 v21, v14

    goto :goto_9

    :cond_b
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v21, v14

    sub-int v14, v20, v19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_f

    if-gt v14, v9, :cond_e

    if-ne v14, v9, :cond_d

    if-gt v2, v15, :cond_c

    const/4 v14, 0x0

    goto :goto_6

    :cond_c
    const/4 v14, 0x1

    :goto_6
    if-ne v13, v14, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v19, v9

    goto :goto_a

    :cond_e
    :goto_7
    move/from16 v19, v9

    goto :goto_9

    :cond_f
    if-nez v4, :cond_14

    move/from16 v19, v9

    iget-object v9, v0, Lly;->C:Laie;

    invoke-virtual {v9, v1}, Laie;->m(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v0, Lly;->D:Laie;

    invoke-virtual {v9, v1}, Laie;->m(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_15

    :cond_10
    if-gt v14, v12, :cond_12

    if-ne v14, v12, :cond_15

    if-gt v2, v8, :cond_11

    const/4 v9, 0x0

    goto :goto_8

    :cond_11
    const/4 v9, 0x1

    :goto_8
    if-ne v13, v9, :cond_15

    :cond_12
    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_13

    iget v4, v10, Lku;->a:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v9, v3, v2

    move v15, v4

    move-object v4, v1

    goto :goto_b

    :cond_13
    iget v7, v10, Lku;->a:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v12, v3, v2

    move v8, v7

    move/from16 v9, v19

    move-object v7, v1

    goto :goto_b

    :cond_14
    move/from16 v19, v9

    :cond_15
    :goto_a
    move/from16 v9, v19

    :goto_b
    add-int v11, v11, v16

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v10, v17

    move-object/from16 v3, v18

    move/from16 v14, v21

    goto/16 :goto_3

    :cond_16
    :goto_c
    if-eqz v4, :cond_17

    return-object v4

    :cond_17
    return-object v7
.end method

.method public final k(Lmd;Lml;Lkz;Lky;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v5}, Llp;->i()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lly;->aj()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v8, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    aget v6, v6, v8

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x1

    if-eq v5, v8, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->bA()V

    :cond_2
    iget v11, v3, Lkz;->e:I

    iget v12, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-eq v11, v9, :cond_3

    iget v12, v3, Lkz;->d:I

    invoke-direct {v0, v1, v2, v12}, Landroid/support/v7/widget/GridLayoutManager;->bu(Lmd;Lml;I)I

    move-result v12

    iget v13, v3, Lkz;->d:I

    invoke-direct {v0, v1, v2, v13}, Landroid/support/v7/widget/GridLayoutManager;->bv(Lmd;Lml;I)I

    move-result v13

    add-int/2addr v12, v13

    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    iget v14, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ge v13, v14, :cond_6

    invoke-virtual {v3, v2}, Lkz;->d(Lml;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-lez v12, :cond_6

    iget v14, v3, Lkz;->d:I

    invoke-direct {v0, v1, v2, v14}, Landroid/support/v7/widget/GridLayoutManager;->bv(Lmd;Lml;I)I

    move-result v15

    iget v8, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-gt v15, v8, :cond_5

    sub-int/2addr v12, v15

    if-gez v12, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v1}, Lkz;->a(Lmd;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v14, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aput-object v8, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " spans."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_3
    if-eqz v13, :cond_1c

    if-ne v11, v9, :cond_7

    move v14, v13

    const/4 v12, 0x0

    const/4 v15, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v12, v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    :goto_4
    const/4 v8, 0x0

    :goto_5
    if-eq v12, v14, :cond_8

    iget-object v7, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lku;

    invoke-static {v7}, Landroid/support/v7/widget/GridLayoutManager;->be(Landroid/view/View;)I

    move-result v7

    invoke-direct {v0, v1, v2, v7}, Landroid/support/v7/widget/GridLayoutManager;->bv(Lmd;Lml;I)I

    move-result v7

    iput v7, v9, Lku;->b:I

    iput v8, v9, Lku;->a:I

    add-int/2addr v8, v7

    add-int/2addr v12, v15

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_6
    if-ge v2, v13, :cond_e

    iget-object v8, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v8, v8, v2

    iget-object v9, v3, Lkz;->l:Ljava/util/List;

    if-nez v9, :cond_a

    const/4 v9, 0x1

    if-ne v11, v9, :cond_9

    invoke-virtual {v0, v8}, Lly;->az(Landroid/view/View;)V

    const/4 v12, 0x0

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v0, v8, v12}, Lly;->aA(Landroid/view/View;I)V

    goto :goto_7

    :cond_a
    const/4 v9, 0x1

    const/4 v12, 0x0

    if-ne v11, v9, :cond_b

    invoke-virtual {v0, v8}, Lly;->ax(Landroid/view/View;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v0, v8, v12}, Lly;->ay(Landroid/view/View;I)V

    :goto_7
    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v9}, Lly;->aB(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {v0, v8, v5, v12}, Landroid/support/v7/widget/GridLayoutManager;->by(Landroid/view/View;IZ)V

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v9, v8}, Llp;->b(Landroid/view/View;)I

    move-result v9

    if-le v9, v7, :cond_c

    move v7, v9

    :cond_c
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lku;

    iget-object v12, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v12, v8}, Llp;->c(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    iget v9, v9, Lku;->b:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    cmpl-float v9, v8, v1

    if-lez v9, :cond_d

    move v1, v8

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    if-eqz v10, :cond_10

    iget v2, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->bw(I)V

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v13, :cond_10

    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v1, v1, v12

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v5}, Landroid/support/v7/widget/GridLayoutManager;->by(Landroid/view/View;IZ)V

    iget-object v2, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v2, v1}, Llp;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, v7, :cond_f

    move v7, v1

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    :goto_9
    if-ge v12, v13, :cond_13

    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v1, v1, v12

    iget-object v2, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v2, v1}, Llp;->b(Landroid/view/View;)I

    move-result v2

    if-eq v2, v7, :cond_12

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lku;

    iget-object v5, v2, Lku;->d:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v8

    iget v8, v2, Lku;->topMargin:I

    add-int/2addr v6, v8

    iget v8, v2, Lku;->bottomMargin:I

    add-int/2addr v6, v8

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v5

    iget v5, v2, Lku;->leftMargin:I

    add-int/2addr v8, v5

    iget v5, v2, Lku;->rightMargin:I

    add-int/2addr v8, v5

    iget v5, v2, Lku;->a:I

    iget v9, v2, Lku;->b:I

    invoke-virtual {v0, v5, v9}, Landroid/support/v7/widget/GridLayoutManager;->c(II)I

    move-result v5

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    iget v2, v2, Lku;->width:I

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10, v8, v2, v9}, Landroid/support/v7/widget/GridLayoutManager;->ak(IIIIZ)I

    move-result v2

    sub-int v5, v7, v6

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_a

    :cond_11
    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    sub-int v8, v7, v8

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v2, v2, Lku;->height:I

    invoke-static {v5, v10, v6, v2, v9}, Landroid/support/v7/widget/GridLayoutManager;->ak(IIIIZ)I

    move-result v5

    move v2, v8

    :goto_a
    const/4 v6, 0x1

    invoke-direct {v0, v1, v2, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->bz(Landroid/view/View;IIZ)V

    goto :goto_b

    :cond_12
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_13
    const/4 v6, 0x1

    const/4 v9, 0x0

    iput v7, v4, Lky;->a:I

    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v1, v6, :cond_15

    iget v1, v3, Lkz;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    iget v12, v3, Lkz;->b:I

    sub-int v1, v12, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v17, v12

    move v12, v1

    move/from16 v1, v17

    goto :goto_c

    :cond_14
    iget v12, v3, Lkz;->b:I

    add-int v1, v12, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_c

    :cond_15
    iget v1, v3, Lkz;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    iget v12, v3, Lkz;->b:I

    sub-int v1, v12, v7

    move v2, v1

    move v3, v12

    const/4 v1, 0x0

    const/4 v12, 0x0

    goto :goto_c

    :cond_16
    iget v12, v3, Lkz;->b:I

    add-int v1, v12, v7

    move v3, v1

    move v2, v12

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_c
    const/4 v7, 0x0

    :goto_d
    if-ge v7, v13, :cond_1b

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lku;

    iget v8, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->Y()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lly;->aq()I

    move-result v2

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v8, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    iget v9, v6, Lku;->a:I

    sub-int/2addr v8, v9

    aget v3, v3, v8

    add-int/2addr v2, v3

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v3, v5}, Llp;->c(Landroid/view/View;)I

    move-result v3

    sub-int v3, v2, v3

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    goto :goto_e

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lly;->aq()I

    move-result v2

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v8, v6, Lku;->a:I

    aget v3, v3, v8

    add-int/2addr v2, v3

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v3, v5}, Llp;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_e

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lly;->as()I

    move-result v1

    iget-object v8, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v9, v6, Lku;->a:I

    aget v8, v8, v9

    add-int/2addr v1, v8

    iget-object v8, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Llp;

    invoke-virtual {v8, v5}, Llp;->c(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v1

    move v12, v1

    move v1, v8

    :goto_e
    invoke-static {v5, v2, v12, v3, v1}, Landroid/support/v7/widget/GridLayoutManager;->bj(Landroid/view/View;IIII)V

    invoke-virtual {v6}, Llz;->c()Z

    move-result v8

    if-nez v8, :cond_19

    invoke-virtual {v6}, Llz;->b()Z

    move-result v6

    if-eqz v6, :cond_1a

    :cond_19
    const/4 v6, 0x1

    iput-boolean v6, v4, Lky;->c:Z

    :cond_1a
    iget-boolean v6, v4, Lky;->d:Z

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    or-int/2addr v5, v6

    iput-boolean v5, v4, Lky;->d:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_1b
    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1c
    const/4 v1, 0x1

    iput-boolean v1, v4, Lky;->b:Z

    return-void
.end method

.method public final l(Lmd;Lml;Lkx;I)V
    .locals 4

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bA()V

    invoke-virtual {p2}, Lml;->a()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p2, Lml;->g:Z

    if-nez v0, :cond_2

    iget v0, p3, Lkx;->b:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->bu(Lmd;Lml;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    :goto_0
    if-lez v0, :cond_2

    iget p4, p3, Lkx;->b:I

    if-lez p4, :cond_2

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, Lkx;->b:I

    invoke-direct {p0, p1, p2, p4}, Landroid/support/v7/widget/GridLayoutManager;->bu(Lmd;Lml;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lml;->a()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    iget v1, p3, Lkx;->b:I

    :goto_1
    if-ge v1, p4, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->bu(Lmd;Lml;I)I

    move-result v3

    if-le v3, v0, :cond_1

    move v1, v2

    move v0, v3

    goto :goto_1

    :cond_1
    iput v1, p3, Lkx;->b:I

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->bx()V

    return-void
.end method

.method public final m(Lmd;Lml;Lagt;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->m(Lmd;Lml;Lagt;)V

    const-class p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lagt;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Lmd;Lml;Landroid/view/View;Lagt;)V
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lku;

    if-nez v1, :cond_0

    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->aI(Landroid/view/View;Lagt;)V

    return-void

    :cond_0
    check-cast v0, Lku;

    invoke-virtual {v0}, Llz;->a()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;->bt(Lmd;Lml;I)I

    move-result p1

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget p2, v0, Lku;->a:I

    iget v0, v0, Lku;->b:I

    invoke-static {p2, v0, p1, v1, p3}, Lbkb;->z(IIIIZ)Lbkb;

    move-result-object p1

    invoke-virtual {p4, p1}, Lagt;->l(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget p2, v0, Lku;->a:I

    iget v0, v0, Lku;->b:I

    invoke-static {p1, v1, p2, v0, p3}, Lbkb;->z(IIIIZ)Lbkb;

    move-result-object p1

    invoke-virtual {p4, p1}, Lagt;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Lmd;Lml;)V
    .locals 6

    iget-boolean v0, p2, Lml;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lly;->av(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lku;

    invoke-virtual {v2}, Llz;->a()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    iget v5, v2, Lku;->b:I

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    iget v2, v2, Lku;->a:I

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->o(Lmd;Lml;)V

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final p(Lml;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->p(Lml;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    return-void
.end method

.method public final q(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->q(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Lly;->aq()I

    move-result v0

    invoke-virtual {p0}, Lly;->ar()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lly;->as()I

    move-result v1

    invoke-virtual {p0}, Lly;->ap()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lly;->an()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroid/support/v7/widget/GridLayoutManager;->ai(III)I

    move-result p1

    iget-object p3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget p3, p3, v1

    add-int/2addr p3, v0

    invoke-virtual {p0}, Lly;->ao()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->ai(III)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lly;->ao()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->ai(III)I

    move-result p2

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lly;->an()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->ai(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lly;->aS(II)V

    return-void
.end method

.method public final r(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->r(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Llz;)Z
    .locals 0

    instance-of p1, p1, Lku;

    return p1
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->n:Lla;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u(Lml;Lkz;Lkr;)V
    .locals 5

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, p1}, Lkz;->d(Lml;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    iget v3, p2, Lkz;->d:I

    iget v4, p2, Lkz;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Lkr;->a(II)V

    add-int/lit8 v0, v0, -0x1

    iget v3, p2, Lkz;->d:I

    iget v4, p2, Lkz;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Lkz;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v(II)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Lbby;

    invoke-virtual {p1}, Lbby;->k()V

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Lbby;

    invoke-virtual {p1}, Lbby;->j()V

    return-void
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Lbby;

    invoke-virtual {v0}, Lbby;->k()V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Lbby;

    invoke-virtual {v0}, Lbby;->j()V

    return-void
.end method

.method public final x(II)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Lbby;

    invoke-virtual {p1}, Lbby;->k()V

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Lbby;

    invoke-virtual {p1}, Lbby;->j()V

    return-void
.end method

.method public final y(II)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Lbby;

    invoke-virtual {p1}, Lbby;->k()V

    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Lbby;

    invoke-virtual {p1}, Lbby;->j()V

    return-void
.end method
