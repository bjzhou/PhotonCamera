.class public abstract Lly;
.super Ljava/lang/Object;


# instance fields
.field public A:I

.field public B:I

.field public final C:Laie;

.field public final D:Laie;

.field private final L:Lnu;

.field private final M:Lnu;

.field p:Ljw;

.field public q:Landroid/support/v7/widget/RecyclerView;

.field public r:Lmk;

.field public s:Z

.field public t:Z

.field public final u:Z

.field public final v:Z

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llw;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Llw;-><init>(Lly;I)V

    iput-object v0, p0, Lly;->L:Lnu;

    new-instance v2, Llw;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Llw;-><init>(Lly;I)V

    iput-object v2, p0, Lly;->M:Lnu;

    new-instance v4, Laie;

    invoke-direct {v4, v0}, Laie;-><init>(Lnu;)V

    iput-object v4, p0, Lly;->C:Laie;

    new-instance v0, Laie;

    invoke-direct {v0, v2}, Laie;-><init>(Lnu;)V

    iput-object v0, p0, Lly;->D:Laie;

    iput-boolean v3, p0, Lly;->s:Z

    iput-boolean v3, p0, Lly;->t:Z

    iput-boolean v1, p0, Lly;->u:Z

    iput-boolean v1, p0, Lly;->v:Z

    return-void
.end method

.method public static aW(III)Z
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    sparse-switch v0, :sswitch_data_0

    return v1

    :sswitch_0
    if-ne p1, p0, :cond_2

    return p2

    :cond_2
    return v1

    :sswitch_1
    return p2

    :sswitch_2
    if-lt p1, p0, :cond_3

    return p2

    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ai(III)I
    .locals 1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :sswitch_0
    return p0

    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ak(IIIIZ)I
    .locals 2

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x1

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    if-ltz p3, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_3

    :cond_0
    if-ne p3, v0, :cond_6

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :cond_1
    if-ltz p3, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_3

    :cond_2
    if-ne p3, v0, :cond_3

    :goto_0
    :sswitch_0
    move p3, p0

    goto :goto_3

    :cond_3
    const/4 p4, -0x2

    if-ne p3, p4, :cond_6

    const/high16 p3, -0x80000000

    if-eq p1, p3, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    :goto_1
    const/high16 p1, -0x80000000

    goto :goto_0

    :cond_6
    :goto_2
    :sswitch_1
    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_3
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static at(Landroid/content/Context;Landroid/util/AttributeSet;II)Llx;
    .locals 2

    new-instance v0, Llx;

    invoke-direct {v0}, Llx;-><init>()V

    sget-object v1, Lfu;->a:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v0, Llx;->a:I

    const/16 p3, 0xa

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Llx;->b:I

    const/16 p2, 0x9

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v0, Llx;->c:Z

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Llx;->d:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private final bJ(Landroid/view/View;IZ)V
    .locals 6

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v0

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lmo;->u()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {p3, v0}, Laie;->f(Lmo;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {p3, v0}, Laie;->c(Lmo;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Llz;

    invoke-virtual {v0}, Lmo;->A()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lmo;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lly;->p:Ljw;

    invoke-virtual {v1, p1}, Ljw;->d(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    iget-object p2, p0, Lly;->p:Ljw;

    invoke-virtual {p2}, Ljw;->a()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_6

    if-eq v1, p2, :cond_a

    iget-object p1, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {p1, v1}, Lly;->av(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Lly;->aD(I)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llz;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v4

    invoke-virtual {v4}, Lmo;->u()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v5, v4}, Laie;->c(Lmo;)V

    goto :goto_2

    :cond_4
    iget-object v5, p1, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v5, v4}, Laie;->f(Lmo;)V

    :goto_2
    iget-object p1, p1, Lly;->p:Ljw;

    invoke-virtual {v4}, Lmo;->u()Z

    move-result v4

    invoke-virtual {p1, v3, p2, v1, v4}, Ljw;->h(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_5

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot move a child from non-existing index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    iget-object v1, p0, Lly;->p:Ljw;

    invoke-virtual {v1, p1, p2, v2}, Ljw;->g(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    iput-boolean p2, p3, Llz;->e:Z

    iget-object p2, p0, Lly;->r:Lmk;

    if-eqz p2, :cond_a

    iget-boolean v1, p2, Lmk;->f:Z

    if-eqz v1, :cond_a

    invoke-static {p1}, Lmk;->n(Landroid/view/View;)I

    move-result v1

    iget v3, p2, Lmk;->b:I

    if-ne v1, v3, :cond_a

    iput-object p1, p2, Lmk;->g:Landroid/view/View;

    goto :goto_5

    :cond_8
    :goto_3
    invoke-virtual {v0}, Lmo;->v()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lmo;->o()V

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lmo;->h()V

    :goto_4
    iget-object v1, p0, Lly;->p:Ljw;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Ljw;->h(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_a
    :goto_5
    iget-boolean p1, p3, Llz;->f:Z

    if-eqz p1, :cond_b

    iget-object p1, v0, Lmo;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput-boolean v2, p3, Llz;->f:Z

    :cond_b
    return-void
.end method

.method public static final ba(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Llz;

    iget-object p0, p0, Llz;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public static final bb(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    iget-object v0, v0, Llz;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static final bc(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    iget-object v0, v0, Llz;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static final bd(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Llz;

    iget-object p0, p0, Llz;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public static final be(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Llz;

    invoke-virtual {p0}, Llz;->a()I

    move-result p0

    return p0
.end method

.method public static final bf(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Llz;

    iget-object p0, p0, Llz;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public static final bh(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Llz;

    iget-object p0, p0, Llz;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public static final bj(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    iget-object v1, v0, Llz;->d:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v0, Llz;->leftMargin:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v0, Llz;->topMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v2, v0, Llz;->rightMargin:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v0, v0, Llz;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static final bo(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {p0}, Lly;->ba(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static final bp(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {p0}, Lly;->bd(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static final bq(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {p0}, Lly;->bf(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static final br(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {p0}, Lly;->bh(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public A(Lml;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public B(Lml;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public C(Lml;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public D(Lml;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public E(Lml;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public K()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public M(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lly;->av(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lmo;->b()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lmo;->z()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v4, v4, Lml;->g:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lmo;->u()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    return-object v2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public N(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->q(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Q(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lls;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public R(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public S(I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public V()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public X()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Lmd;Lml;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final aA(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lly;->bJ(Landroid/view/View;IZ)V

    return-void
.end method

.method public final aB(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final aC(Lmd;)V
    .locals 4

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lly;->av(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v2

    invoke-virtual {v2}, Lmo;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lmo;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lmo;->u()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-boolean v3, v3, Lls;->b:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lly;->aO(I)V

    invoke-virtual {p1, v2}, Lmd;->k(Lmo;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lly;->aD(I)V

    invoke-virtual {p1, v1}, Lmd;->l(Landroid/view/View;)V

    iget-object v1, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v1, v2}, Laie;->f(Lmo;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final aD(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lly;->av(I)Landroid/view/View;

    iget-object v0, p0, Lly;->p:Ljw;

    invoke-virtual {v0, p1}, Ljw;->i(I)V

    return-void
.end method

.method public final aE(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lly;->t:Z

    invoke-virtual {p0, p1}, Lly;->aH(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public aF(I)V
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->K(I)V

    :cond_0
    return-void
.end method

.method public aG(I)V
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->L(I)V

    :cond_0
    return-void
.end method

.method public aH(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public final aI(Landroid/view/View;Lagt;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmo;->u()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lly;->p:Ljw;

    iget-object v0, v0, Lmo;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Ljw;->k(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {p0, v1, v0, p1, p2}, Lly;->n(Lmd;Lml;Landroid/view/View;Lagt;)V

    :cond_0
    return-void
.end method

.method public aJ(I)V
    .locals 0

    return-void
.end method

.method public final aK(Lmd;)V
    .locals 2

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lly;->av(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v1

    invoke-virtual {v1}, Lmo;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lly;->aN(ILmd;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final aL(Lmd;)V
    .locals 6

    iget-object v0, p1, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p1, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmo;

    iget-object v2, v2, Lmo;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v3

    invoke-virtual {v3}, Lmo;->z()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmo;->m(Z)V

    invoke-virtual {v3}, Lmo;->w()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v4, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Llv;->b(Lmo;)V

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmo;->m(Z)V

    invoke-virtual {p1, v2}, Lmd;->g(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Lmd;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    iget-object p1, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_5
    return-void
.end method

.method public final aM(Landroid/view/View;Lmd;)V
    .locals 3

    iget-object v0, p0, Lly;->p:Ljw;

    iget-object v1, v0, Ljw;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v1, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->j(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Ljw;->a:Ljv;

    invoke-virtual {v2, v1}, Ljv;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljw;->l(Landroid/view/View;)V

    :cond_1
    iget-object v0, v0, Ljw;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v0, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->m(I)V

    :goto_0
    invoke-virtual {p2, p1}, Lmd;->j(Landroid/view/View;)V

    return-void
.end method

.method public final aN(ILmd;)V
    .locals 1

    invoke-virtual {p0, p1}, Lly;->av(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lly;->aO(I)V

    invoke-virtual {p2, v0}, Lmd;->j(Landroid/view/View;)V

    return-void
.end method

.method public final aO(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lly;->av(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lly;->p:Ljw;

    invoke-virtual {v0, p1}, Ljw;->b(I)I

    move-result p1

    iget-object v1, v0, Ljw;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v1, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->k(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Ljw;->a:Ljv;

    invoke-virtual {v2, p1}, Ljv;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljw;->l(Landroid/view/View;)V

    :cond_1
    iget-object v0, v0, Ljw;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->m(I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public final aP()V
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final aQ(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lly;->aR(II)V

    return-void
.end method

.method public final aR(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lly;->A:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lly;->y:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroid/support/v7/widget/RecyclerView;->a:Z

    if-nez p1, :cond_0

    iput v0, p0, Lly;->A:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lly;->B:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lly;->z:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroid/support/v7/widget/RecyclerView;->a:Z

    if-nez p1, :cond_1

    iput v0, p0, Lly;->B:I

    :cond_1
    return-void
.end method

.method public final aS(II)V
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method public final aT(II)V
    .locals 8

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lly;->av(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView;->F(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v4, :cond_0

    iget v4, v7, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v2, :cond_1

    iget v2, v7, Landroid/graphics/Rect;->right:I

    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v5, :cond_2

    iget v5, v7, Landroid/graphics/Rect;->top:I

    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_3

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lly;->q(Landroid/graphics/Rect;II)V

    return-void

    :cond_5
    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->v(II)V

    return-void
.end method

.method public final aU(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lly;->p:Ljw;

    const/4 p1, 0x0

    iput p1, p0, Lly;->A:I

    iput p1, p0, Lly;->B:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    iput-object v0, p0, Lly;->p:Ljw;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lly;->A:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Lly;->B:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lly;->y:I

    iput p1, p0, Lly;->z:I

    return-void
.end method

.method public final aV(Lmk;)V
    .locals 3

    iget-object v0, p0, Lly;->r:Lmk;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    iget-boolean v1, v0, Lmk;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmk;->f()V

    :cond_0
    iput-object p1, p0, Lly;->r:Lmk;

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->J:Lmn;

    invoke-virtual {v1}, Lmn;->d()V

    iget-boolean v1, p1, Lmk;->h:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was started more than once. Each instance of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p1, Lmk;->c:Landroid/support/v7/widget/RecyclerView;

    iput-object p0, p1, Lmk;->d:Lly;

    iget v0, p1, Lmk;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p1, Lmk;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput v0, v2, Lml;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lmk;->f:Z

    iput-boolean v0, p1, Lmk;->e:Z

    iget v2, p1, Lmk;->b:I

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v1, v2}, Lly;->M(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lmk;->g:Landroid/view/View;

    iget-object v1, p1, Lmk;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->J:Lmn;

    invoke-virtual {v1}, Lmn;->b()V

    iput-boolean v0, p1, Lmk;->h:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid target position"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final aX()Z
    .locals 1

    iget-object v0, p0, Lly;->r:Lmk;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lmk;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aY(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lly;->aq()I

    move-result v1

    invoke-virtual {p0}, Lly;->as()I

    move-result v2

    iget v3, p0, Lly;->A:I

    invoke-virtual {p0}, Lly;->ar()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lly;->B:I

    invoke-virtual {p0}, Lly;->ap()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v6, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v6

    sub-int/2addr v5, v1

    sub-int/2addr v6, v2

    sub-int/2addr p3, v4

    const/4 v1, 0x0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p2, v3

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0}, Lly;->am()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    if-eqz v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    aput v2, v0, v1

    aput v3, v0, v8

    if-eqz p5, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lly;->aq()I

    move-result p3

    invoke-virtual {p0}, Lly;->as()I

    move-result p5

    iget v0, p0, Lly;->A:I

    invoke-virtual {p0}, Lly;->ar()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Lly;->B:I

    invoke-virtual {p0}, Lly;->ap()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-static {p2, v5}, Landroid/support/v7/widget/RecyclerView;->F(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    if-ge p2, v0, :cond_6

    iget p2, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v2

    if-le p2, p3, :cond_6

    iget p2, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v3

    if-ge p2, v4, :cond_6

    iget p2, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v3

    if-le p2, p5, :cond_6

    :cond_5
    if-nez v2, :cond_7

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    return v1

    :cond_7
    move v1, v2

    :goto_3
    if-eqz p4, :cond_8

    invoke-virtual {p1, v1, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v1, v3}, Landroid/support/v7/widget/RecyclerView;->ac(II)V

    :goto_4
    return v8
.end method

.method public final aZ(Landroid/view/View;IILlz;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lly;->u:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Llz;->width:I

    invoke-static {v0, p2, v1}, Lly;->aW(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Llz;->height:I

    invoke-static {p1, p3, p2}, Lly;->aW(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public aa()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ab(IILml;Lkr;)V
    .locals 0

    return-void
.end method

.method public ac(ILkr;)V
    .locals 0

    return-void
.end method

.method public ag(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public ah(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final aj()I
    .locals 1

    iget-object v0, p0, Lly;->p:Ljw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljw;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final al()I
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lls;->a()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final am()I
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lafc;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final an()I
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lafb;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final ao()I
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lafb;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final ap()I
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final aq()I
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ar()I
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final as()I
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final au(Landroid/view/View;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lly;->p:Ljw;

    invoke-virtual {v0, p1}, Ljw;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public final av(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lly;->p:Ljw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljw;->e(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final aw()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lly;->p:Ljw;

    invoke-virtual {v2, v0}, Ljw;->k(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final ax(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lly;->ay(Landroid/view/View;I)V

    return-void
.end method

.method public final ay(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lly;->bJ(Landroid/view/View;IZ)V

    return-void
.end method

.method public final az(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lly;->aA(Landroid/view/View;I)V

    return-void
.end method

.method public b(Lmd;Lml;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public bg()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bi(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    iget-object v0, v0, Llz;->d:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->l:Landroid/graphics/RectF;

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public bk()V
    .locals 0

    return-void
.end method

.method public final bl(II)V
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->v(II)V

    return-void
.end method

.method public final bm(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final bn(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lly;->t:Z

    invoke-virtual {p0, p1}, Lly;->ag(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public final bs(I)Z
    .locals 5

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lly;->B:I

    iget v2, p0, Lly;->A:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    :cond_0
    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_0
    iget-object p1, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lly;->as()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lly;->ap()I

    move-result p1

    sub-int/2addr v0, p1

    neg-int p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lly;->aq()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lly;->ar()I

    move-result v0

    sub-int/2addr v2, v0

    neg-int v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_1
    iget-object p1, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lly;->as()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lly;->ap()I

    move-result p1

    sub-int/2addr v0, p1

    move p1, v0

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lly;->aq()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lly;->ar()I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez p1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    return v1

    :cond_6
    move v1, p1

    :goto_3
    iget-object p1, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0, v1, v3}, Landroid/support/v7/widget/RecyclerView;->at(IIZ)V

    return v3

    :cond_7
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public d(ILmd;Lml;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public e(ILmd;Lml;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract f()Llz;
.end method

.method public g(Landroid/view/ViewGroup$LayoutParams;)Llz;
    .locals 1

    instance-of v0, p1, Llz;

    if-eqz v0, :cond_0

    new-instance v0, Llz;

    check-cast p1, Llz;

    invoke-direct {v0, p1}, Llz;-><init>(Llz;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Llz;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Llz;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Llz;

    invoke-direct {v0, p1}, Llz;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public h(Landroid/content/Context;Landroid/util/AttributeSet;)Llz;
    .locals 1

    new-instance v0, Llz;

    invoke-direct {v0, p1, p2}, Llz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public j(Landroid/view/View;ILmd;Lml;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public m(Lmd;Lml;Lagt;)V
    .locals 3

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lagt;->e(I)V

    invoke-virtual {p3, v2}, Lagt;->n(Z)V

    :cond_1
    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lagt;->e(I)V

    invoke-virtual {p3, v2}, Lagt;->n(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lly;->b(Lmd;Lml;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lly;->a(Lmd;Lml;)I

    move-result p1

    invoke-virtual {p0}, Lly;->bg()I

    move-result p2

    invoke-static {v0, p1, p2}, Lbkb;->A(III)Lbkb;

    move-result-object p1

    invoke-virtual {p3, p1}, Lagt;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public n(Lmd;Lml;Landroid/view/View;Lagt;)V
    .locals 0

    return-void
.end method

.method public o(Lmd;Lml;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public p(Lml;)V
    .locals 0

    return-void
.end method

.method public q(Landroid/graphics/Rect;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lly;->aq()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lly;->ar()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Lly;->as()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lly;->ap()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lly;->ao()I

    move-result v1

    invoke-static {p2, v0, v1}, Lly;->ai(III)I

    move-result p2

    invoke-virtual {p0}, Lly;->an()I

    move-result v0

    invoke-static {p3, p1, v0}, Lly;->ai(III)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lly;->aS(II)V

    return-void
.end method

.method public s(Llz;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public v(II)V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 0

    return-void
.end method

.method public x(II)V
    .locals 0

    return-void
.end method

.method public y(II)V
    .locals 0

    return-void
.end method

.method public z(Lml;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
