.class final Lkn;
.super Les;


# instance fields
.field final synthetic a:Lkp;


# direct methods
.method public constructor <init>(Lkp;)V
    .locals 0

    iput-object p1, p0, Lkn;->a:Lkp;

    invoke-direct {p0}, Les;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 9

    iget-object p2, p0, Lkn;->a:Lkp;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object v0, p2, Lkp;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget v1, p2, Lkp;->k:I

    sub-int v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    iget v2, p2, Lkp;->a:I

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p2, Lkp;->m:Z

    iget-object v2, p2, Lkp;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    iget v5, p2, Lkp;->j:I

    sub-int v6, v2, v5

    if-lez v6, :cond_1

    iget v6, p2, Lkp;->a:I

    if-lt v5, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, p2, Lkp;->n:Z

    iget-boolean v7, p2, Lkp;->m:Z

    const/high16 v8, 0x40000000    # 2.0f

    if-nez v7, :cond_2

    if-nez v6, :cond_3

    iget p1, p2, Lkp;->o:I

    if-eqz p1, :cond_5

    invoke-virtual {p2, v4}, Lkp;->u(I)V

    return-void

    :cond_2
    int-to-float p1, p1

    int-to-float v4, v1

    div-float v6, v4, v8

    int-to-float v7, v0

    add-float/2addr p1, v6

    mul-float v4, v4, p1

    div-float/2addr v4, v7

    float-to-int p1, v4

    iput p1, p2, Lkp;->e:I

    mul-int p1, v1, v1

    div-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Lkp;->d:I

    :cond_3
    iget-boolean p1, p2, Lkp;->n:Z

    if-eqz p1, :cond_4

    int-to-float p1, p3

    int-to-float p3, v5

    div-float v0, p3, v8

    int-to-float v1, v2

    add-float/2addr p1, v0

    mul-float p3, p3, p1

    div-float/2addr p3, v1

    float-to-int p1, p3

    iput p1, p2, Lkp;->h:I

    mul-int p1, v5, v5

    div-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Lkp;->g:I

    :cond_4
    iget p1, p2, Lkp;->o:I

    if-eqz p1, :cond_6

    if-ne p1, v3, :cond_5

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_2
    invoke-virtual {p2, v3}, Lkp;->u(I)V

    return-void
.end method
