.class public final Ljg;
.super Llg;

# interfaces
.implements Lji;


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroid/widget/ListAdapter;

.field public final c:Landroid/graphics/Rect;

.field public final synthetic d:Ljj;

.field private s:I


# direct methods
.method public constructor <init>(Ljj;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    iput-object p1, p0, Ljg;->d:Ljj;

    const v0, 0x7f0405d7

    invoke-direct {p0, p2, p3, v0}, Llg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Ljg;->c:Landroid/graphics/Rect;

    iput-object p1, p0, Llg;->l:Landroid/view/View;

    invoke-virtual {p0}, Llg;->y()V

    new-instance p1, Llqx;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Llqx;-><init>(Ljg;I)V

    iput-object p1, p0, Llg;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public static synthetic m(Ljg;)V
    .locals 0

    invoke-super {p0}, Llg;->s()V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ljg;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final e(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Llg;->e(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Ljg;->b:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Ljg;->s:I

    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Ljg;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public final l(II)V
    .locals 3

    invoke-virtual {p0}, Llg;->u()Z

    move-result v0

    invoke-virtual {p0}, Ljg;->n()V

    invoke-virtual {p0}, Llg;->x()V

    invoke-super {p0}, Llg;->s()V

    iget-object v1, p0, Llg;->e:Lkm;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-static {v1, p1}, Ljb;->d(Landroid/view/View;I)V

    invoke-static {v1, p2}, Ljb;->c(Landroid/view/View;I)V

    iget-object p1, p0, Ljg;->d:Ljj;

    invoke-virtual {p1}, Ljj;->getSelectedItemPosition()I

    move-result p1

    iget-object p2, p0, Llg;->e:Lkm;

    invoke-virtual {p0}, Llg;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p2, Lkm;->a:Z

    invoke-virtual {p2, p1}, Lkm;->setSelection(I)V

    invoke-virtual {p2}, Lkm;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1, v2}, Lkm;->setItemChecked(IZ)V

    :cond_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Ljg;->d:Ljj;

    invoke-virtual {p1}, Ljj;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lho;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lho;-><init>(Ljg;I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, Ljf;

    invoke-direct {p1, p0, p2}, Ljf;-><init>(Ljg;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Llg;->v(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public final n()V
    .locals 7

    invoke-virtual {p0}, Llg;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ljg;->d:Ljj;

    iget-object v1, v1, Ljj;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Ljg;->d:Ljj;

    invoke-static {v0}, Lnw;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljg;->d:Ljj;

    iget-object v0, v0, Ljj;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljg;->d:Ljj;

    iget-object v0, v0, Ljj;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljg;->d:Ljj;

    iget-object v0, v0, Ljj;->d:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljg;->d:Ljj;

    invoke-virtual {v1}, Ljj;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Ljg;->d:Ljj;

    invoke-virtual {v2}, Ljj;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Ljg;->d:Ljj;

    invoke-virtual {v3}, Ljj;->getWidth()I

    move-result v3

    iget-object v4, p0, Ljg;->d:Ljj;

    iget v5, v4, Ljj;->c:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Ljg;->b:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Llg;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljj;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    iget-object v5, p0, Ljg;->d:Ljj;

    invoke-virtual {v5}, Ljj;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Ljg;->d:Ljj;

    iget-object v6, v6, Ljj;->d:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Ljg;->d:Ljj;

    iget-object v6, v6, Ljj;->d:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v1

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Llg;->r(I)V

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v1

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Llg;->r(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, Llg;->r(I)V

    :goto_1
    iget-object v4, p0, Ljg;->d:Ljj;

    invoke-static {v4}, Lnw;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    iget v1, p0, Llg;->f:I

    sub-int/2addr v3, v1

    iget v1, p0, Ljg;->s:I

    sub-int/2addr v3, v1

    add-int/2addr v0, v3

    goto :goto_2

    :cond_5
    iget v2, p0, Ljg;->s:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_2
    iput v0, p0, Llg;->g:I

    return-void
.end method
