.class abstract Lhf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lhn;
.implements Lhj;


# instance fields
.field public g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static v(Landroid/widget/ListAdapter;)Lgt;
    .locals 1

    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lgt;

    return-object p0

    :cond_0
    check-cast p0, Lgt;

    return-object p0
.end method

.method protected static w(Lgw;)Z
    .locals 5

    invoke-virtual {p0}, Lgw;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lgw;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method protected static x(Landroid/widget/ListAdapter;Landroid/content/Context;I)I
    .locals 11

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move-object v7, v4

    move-object v8, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v6, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v6

    :goto_1
    if-eq v9, v6, :cond_1

    move-object v8, v4

    :cond_1
    if-nez v7, :cond_2

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-interface {p0, v0, v8, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-lt v6, p2, :cond_3

    return p2

    :cond_3
    if-le v6, v5, :cond_4

    move v5, v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v6, v10

    goto :goto_0

    :cond_5
    return v5
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lgw;)V
    .locals 0

    return-void
.end method

.method public final g(Lgy;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lgy;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract j(Lgw;)V
.end method

.method public abstract l(Landroid/view/View;)V
.end method

.method public abstract m(Z)V
.end method

.method public abstract n(I)V
.end method

.method public abstract o(I)V
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-static {p1}, Lhf;->v(Landroid/widget/ListAdapter;)Lgt;

    move-result-object p2

    iget-object p2, p2, Lgt;->a:Lgw;

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    const/4 p3, 0x1

    invoke-virtual {p0}, Lhf;->t()Z

    move-result p4

    if-eq p3, p4, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p1, p0, p3}, Lgw;->A(Landroid/view/MenuItem;Lhj;I)Z

    return-void
.end method

.method public abstract p(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract q(Z)V
.end method

.method public abstract r(I)V
.end method

.method protected t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
